# Use the latest Homebrew Docker image
FROM ghcr.io/homebrew/brew:latest

# Install Python 3.13 and uv via Homebrew
RUN brew install python@3.13 uv

# Add Homebrew binaries to PATH
ENV PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

# Set the working directory
WORKDIR /app

# Copy the project files
COPY . .

# Install Python dependencies using uv
RUN uv sync

# Set the entrypoint to run the MCP server
ENTRYPOINT ["uv", "run", "-m", "aseprite_mcp"]

# Default command (can be overridden)
CMD []
