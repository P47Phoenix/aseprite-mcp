# Aseprite MCP Tools

A Python module that serves as an MCP server for interacting with the Aseprite API

Demo where Cursor draws a cloud in aseprite using the MCP:

https://github.com/user-attachments/assets/572edf75-ab66-4700-87ee-d7d3d196c597

## Docker Usage

### Quick Start

Build and run the Docker image:
```bash
docker build -t aseprite-mcp:latest .
docker run -it --rm aseprite-mcp:latest
```

Or use the provided build scripts:
- **Linux/macOS**: `chmod +x build-docker.sh && ./build-docker.sh`
- **Windows**: `.\build-docker.ps1`

### Using Docker Compose
```bash
# Production
docker-compose up aseprite-mcp

# Development mode
docker-compose --profile dev up aseprite-mcp-dev
```

See [DOCKER.md](DOCKER.md) for detailed Docker setup instructions.

## Local Installation

### Prerequisites
- Python 3.13+
- `uv` package manager

### Installation:
```json
{
  "mcpServers": {
      "aseprite": {
          "command": "/opt/homebrew/bin/uv",
          "args": [
              "--directory",
              "/path/to/repo",
              "run",
              "-m",
              "aseprite_mcp"
          ]
      }
  }
}
```
