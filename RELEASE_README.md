# Sliver Compiled Binaries Release

This branch contains compiled Sliver binaries for Linux AMD64.

## Binaries Included

### Client Binary
- `sliver-client-linux-amd64.tar.gz` (11MB) - Sliver client binary

### Server Binary (Split Archive)
Due to GitHub file size limitations, the server binary has been split into multiple parts:

- `sliver-server-linux-amd64.tar.gz.aa` (50MB)
- `sliver-server-linux-amd64.tar.gz.ab` (50MB) 
- `sliver-server-linux-amd64.tar.gz.ac` (45MB)

## Usage

### Extract Client
```bash
tar -xzf sliver-client-linux-amd64.tar.gz
chmod +x sliver-client
```

### Extract Server
```bash
# Reconstruct the server archive from split files
cat sliver-server-linux-amd64.tar.gz.* > sliver-server-linux-amd64.tar.gz

# Extract the server binary
tar -xzf sliver-server-linux-amd64.tar.gz
chmod +x sliver-server
```

## Build Information
- **Go Version**: go1.25.1 linux/amd64
- **Build Target**: Linux AMD64
- **Original Sizes**: Client (30MB), Server (220MB)
- **Compressed Sizes**: Client (11MB), Server (145MB split into 3 parts)
- **Build Command**: `make linux-amd64`

## Verification
After extraction, verify the binaries:
```bash
./sliver-client version
./sliver-server version
```