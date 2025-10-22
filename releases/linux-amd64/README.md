# Sliver C2 - Linux AMD64 Build Instructions

This directory contains instructions and documentation for building Sliver C2 Framework binaries for Linux AMD64 architecture.

## Building the Binaries

From the repository root, run:
```bash
# For Linux AMD64 specifically
make linux-amd64

# Or use the build script
./build-sliver.sh linux-amd64
```

## Expected Output

After successful compilation:
- **sliver-server** (~220-230 MB) - The main C2 server binary
- **sliver-client** (~30-31 MB) - The CLI client binary

## Build Information

- **Architecture**: Linux AMD64
- **Go Version**: go1.25.1 linux/amd64
- **Build Date**: October 22, 2024
- **Git Commit**: a809989536e8d4d5f9e3efb29700427199b50f2f
- **Build Tags**: go_sqlite (SQLite support enabled)
- **CGO**: Disabled for client, enabled for server (with SQLite support)

## Usage

### Server
```bash
chmod +x sliver-server
./sliver-server --help
```

### Client
```bash
chmod +x sliver-client
./sliver-client --help
```

## Features Included

- Multi-transport C2 listeners (mTLS, WireGuard, HTTP/S, DNS)
- Dynamic implant compilation with per-build cryptography
- Multiplayer operator support
- In-memory execution tooling
- Pivoting and port forwarding
- Credential and loot management
- Cross-platform payload generation
- Built-in SQLite database support

## Requirements

- Linux AMD64 system
- No additional dependencies required (statically linked where possible)

## Security Note

These binaries are compiled from the official Sliver C2 Framework source code and are intended for authorized penetration testing and red team operations only. Ensure you have proper authorization before using these tools.

## Source

Compiled from: https://github.com/BishopFox/sliver
Branch: compile-sliver-macos-linux-wsl