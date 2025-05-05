#!/bin/bash

echo "Starting installation of dependencies for VSSS Firmware..."

# Install Arduino CLI
echo "Installing Arduino CLI..."
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh
if [ $? -ne 0 ]; then
    echo "Failed to install Arduino CLI. Please check your internet connection and try again."
    exit 1
fi

# Verify Arduino CLI installation
echo "Verifying Arduino CLI installation..."
arduino-cli version
if [ $? -ne 0 ]; then
    echo "Arduino CLI is not installed correctly. Please check the installation process."
    exit 1
fi

# Configure Arduino CLI
echo "Configuring Arduino CLI..."
arduino-cli config init
arduino-cli config add board_manager.additional_urls https://raw.githubusercontent.com/espressif/arduino-esp32/gh-pages/package_esp32_index.json

# Update the board index
echo "Updating board index..."
arduino-cli core update-index

# Install ESP32 core
echo "Installing ESP32 core version 3.0.2..."
arduino-cli core install esp32:esp32@3.0.2
if [ $? -ne 0 ]; then
    echo "Failed to install ESP32 core. Please check your internet connection and try again."
    exit 1
fi

# Verify ESP32 core installation
echo "Verifying ESP32 core installation..."
arduino-cli core list | grep "esp32"
if [ $? -ne 0 ]; then
    echo "ESP32 core is not installed correctly. Please check the installation process."
    exit 1
fi

echo "All dependencies have been installed successfully!"