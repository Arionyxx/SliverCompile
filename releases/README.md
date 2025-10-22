# Sliver C2 Framework - Build Repository

This repository contains build scripts and instructions for compiling the Sliver C2 Framework for various platforms.

## Quick Start

```bash
# Clone this repository
git clone https://github.com/Arionyxx/SliverCompile.git
cd SliverCompile

# Run the build script (builds for current platform)
./build-sliver.sh

# Or build for specific platform
./build-sliver.sh linux-amd64
```

## Supported Platforms

- ✅ **Linux AMD64** - Tested and verified
- 🔄 **Linux ARM64** - Available via Makefile
- 🔄 **macOS AMD64** - Available via Makefile  
- 🔄 **macOS ARM64** - Available via Makefile
- 🔄 **Windows AMD64** - Available via Makefile

## Build Results

After successful compilation, you'll have:
- `sliver-server` - Main C2 server (~220MB)
- `sliver-client` - CLI client (~30MB)

## What is Sliver?

Sliver is an open-source, cross-platform adversary simulation/red team framework developed by Bishop Fox. It provides:

- **Multi-platform C2**: Supports Windows, macOS, and Linux
- **Multiple Transports**: mTLS, WireGuard, HTTP/S, DNS tunneling
- **Dynamic Compilation**: Per-session cryptographic keys and obfuscation
- **Multiplayer Support**: Multiple operators can collaborate in real-time
- **Extensibility**: Custom modules and extensions
- **OpSec Focus**: Built with operational security in mind

## Compilation Information

All binaries are compiled from the official Sliver source repository:
- **Source**: https://github.com/BishopFox/sliver
- **Go Version**: 1.25.1+
- **Build System**: GNU Make
- **Features**: Full feature set with SQLite support

## Usage Warning

⚠️ **IMPORTANT**: These tools are intended for authorized security testing only. Ensure you have proper written authorization before using Sliver in any environment. Unauthorized use of these tools may violate local, state, or federal laws.

## Getting Started

1. Download the appropriate binary for your platform
2. Make the binary executable: `chmod +x sliver-server`
3. Run with help flag to see options: `./sliver-server --help`
4. Refer to the official Sliver documentation: https://sliver.sh/

## Support

- **Official Documentation**: https://sliver.sh/
- **GitHub Issues**: https://github.com/BishopFox/sliver/issues
- **Discord**: https://discord.gg/bishopfox

## License

Sliver is released under the GPLv3 license. See the original repository for full license details.