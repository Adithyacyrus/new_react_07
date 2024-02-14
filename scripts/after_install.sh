#!/bin/bash

# Change directory to the project directory
cd /home/ubuntu || { echo "Error: Unable to change directory to /home/ubuntu"; exit 1; }

# Install npm dependencies
echo "Installing npm dependencies..."
npm install || { echo "Error: npm install failed."; exit 1; }

# Install required npm packages
echo "Installing required npm packages..."
npm install --save react react-dom react-scripts react-particles-js || { echo "Error: Failed to install required npm packages."; exit 1; }

# Install pm2 globally
echo "Installing pm2 globally..."
npm install pm2 -g || { echo "Error: Failed to install pm2 globally."; exit 1; }

echo "Setup completed successfully."

