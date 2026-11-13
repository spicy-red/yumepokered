#!/usr/bin/env bash
set -Eeuo pipefail

# Install a pinned RGBDS release for Linux x86_64.
RGBDS_VERSION="1.0.3"
ARCHIVE="rgbds-linux-x86_64.tar.xz"
REPO="gbdev/rgbds"
INSTALL_DIR="/usr/local/bin"

log() {
  printf '[rgbds] %s\n' "$*"
}

die() {
  printf '[rgbds] ERROR: %s\n' "$*" >&2
  exit 1
}

# Validate host environment.
[[ "$(uname -s)" == "Linux" ]] ||
  die "Only Linux is supported."

[[ "$(uname -m)" == "x86_64" ]] ||
  die "Unsupported CPU architecture: $(uname -m)"

for cmd in curl tar sha256sum python3; do
  command -v "$cmd" >/dev/null ||
    die "Missing dependency: $cmd"
done

# No-op when correct version is already installed.
if command -v rgbasm >/dev/null 2>&1; then
  if rgbasm --version 2>&1 |
      grep -Fq "v${RGBDS_VERSION}"; then
    log "RGBDS ${RGBDS_VERSION} already installed."
    exit 0
  fi
fi

# Temporary, collision-free workspace.
TMP_DIR="$(mktemp -d)"
trap 'rm -rf -- "$TMP_DIR"' EXIT

DOWNLOAD_URL="https://github.com/${REPO}/releases/download/v${RGBDS_VERSION}/${ARCHIVE}"
API_URL="https://api.github.com/repos/${REPO}/releases/tags/v${RGBDS_VERSION}"

log "Retrieving release metadata..."

curl --fail --location --silent --show-error \
  --retry 3 \
  --connect-timeout 15 \
  "$API_URL" \
  -o "$TMP_DIR/release.json"

# Extract the SHA-256 digest published by GitHub
# for this exact release asset.
EXPECTED_SHA256="$(
  python3 - "$TMP_DIR/release.json" "$ARCHIVE" <<'PY'
import json
import sys

with open(sys.argv[1], encoding="utf-8") as f:
    release = json.load(f)

asset = next(
    (a for a in release.get("assets", [])
     if a["name"] == sys.argv[2]),
    None,
)

if asset is None:
    sys.exit("Release asset not found")

digest = asset.get("digest") or ""
if not digest.startswith("sha256:"):
    sys.exit("Release asset has no SHA-256 digest")

print(digest.removeprefix("sha256:"))
PY
)" || die "Could not retrieve an official SHA-256 digest"

log "Downloading RGBDS ${RGBDS_VERSION}..."

curl --fail --location --silent --show-error \
  --retry 3 \
  --connect-timeout 15 \
  "$DOWNLOAD_URL" \
  -o "$TMP_DIR/$ARCHIVE"

# Verify before extracting or executing.
log "Verifying SHA-256..."

printf '%s  %s\n' \
  "$EXPECTED_SHA256" "$TMP_DIR/$ARCHIVE" |
  sha256sum --check --status ||
  die "SHA-256 verification failed"

log "Checksum verified."

mkdir -p "$TMP_DIR/extracted"

tar -xJf "$TMP_DIR/$ARCHIVE" \
  -C "$TMP_DIR/extracted"

# Ensure all required tools are present before installing.
BINARIES=(rgbasm rgblink rgbfix rgbgfx)

for binary in "${BINARIES[@]}"; do
  [[ -f "$TMP_DIR/extracted/$binary" ]] ||
    die "Missing executable in archive: $binary"
done

log "Installing RGBDS..."

if [[ -w "$INSTALL_DIR" ]]; then
  install -m 755 \
    "${BINARIES[@]/#/$TMP_DIR/extracted/}" \
    "$INSTALL_DIR/"
else
  sudo install -m 755 \
    "${BINARIES[@]/#/$TMP_DIR/extracted/}" \
    "$INSTALL_DIR/"
fi

log "Installation complete."

for binary in "${BINARIES[@]}"; do
  command -v "$binary" >/dev/null ||
    die "$binary was not found in PATH"
done

rgbasm --version
