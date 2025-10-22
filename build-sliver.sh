#!/bin/bash

# Sliver C2 Framework Build Script
# Compiles Sliver server and client binaries for various platforms

set -e

echo "=== Sliver C2 Framework Build Script ==="
echo "This script will compile Sliver binaries for your platform"
echo

# Check prerequisites
echo "Checking prerequisites..."

# Check Go version
if ! command -v go &> /dev/null; then
    echo "❌ Go is not installed. Please install Go 1.21+ first."
    echo "   Ubuntu/Debian: sudo apt install golang-go"
    echo "   macOS: brew install go"
    exit 1
fi

GO_VERSION=$(go version | cut -d' ' -f3 | cut -c 3-)
echo "✅ Go version: $GO_VERSION"

# Check required tools
REQUIRED_TOOLS="make sed tar curl zip cut"
for tool in $REQUIRED_TOOLS; do
    if ! command -v $tool &> /dev/null; then
        echo "❌ Required tool '$tool' is not installed."
        echo "   Ubuntu/Debian: sudo apt install $tool"
        echo "   macOS: Most tools are pre-installed, you may need: brew install $tool"
        exit 1
    fi
done
echo "✅ All required tools found"

# Display available targets
echo
echo "Available build targets:"
echo "  default         - Build for current platform"
echo "  client          - Build only client for current platform"
echo "  linux-amd64     - Linux AMD64 (x86_64)"
echo "  linux-arm64     - Linux ARM64"
echo "  macos-amd64     - macOS Intel"
echo "  macos-arm64     - macOS Apple Silicon"
echo "  windows-amd64   - Windows AMD64"
echo "  clients         - All client binaries"
echo "  servers         - All server binaries"

# Default target
TARGET=${1:-default}

echo
echo "Building target: $TARGET"
echo "This may take several minutes as it downloads dependencies and assets..."
echo

# Run the build
if ! make $TARGET; then
    echo "❌ Build failed!"
    exit 1
fi

echo
echo "✅ Build completed successfully!"
echo

# Show built files
if ls sliver-* 1> /dev/null 2>&1; then
    echo "Built binaries:"
    ls -lh sliver-* | while read -r line; do
        echo "  $line"
    done
    echo
    echo "Usage:"
    echo "  ./sliver-server --help"
    echo "  ./sliver-client --help"
else
    echo "Built binaries should be available in the current directory"
fi

echo
echo "🎉 Sliver C2 Framework compilation complete!"
echo "⚠️  Remember: Only use these tools for authorized security testing."