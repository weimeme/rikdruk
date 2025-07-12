#!/bin/bash

# Build Docker image for Rikdruk testnet node
echo "Building Rikdruk testnet node Docker image..."

# Build the image
docker build -f docker/testnet-node.Dockerfile -t rikdruk-testnet-node:local .

if [ $? -eq 0 ]; then
    echo "✅ Docker image built successfully!"
    echo "Image name: rikdruk-testnet-node:local"
    echo ""
    echo "You can now run: docker-compose up"
else
    echo "❌ Docker build failed!"
    exit 1
fi 