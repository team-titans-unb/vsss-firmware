# Firrmware for the Titans Robotics Team

This repository contains the firmware code for the Titans robotics team, developed for the robots competing in the Very Small Size Soccer League (VSSS).

## Board Version

To run the code, make sure you have the ESP32 version 3.0.2 installed and properly configured.

## Requirements

- ESP32 board version 3.0.2.
- Arduino CLI installed.
- All necessary dependencies and tools installed to compile and upload the firmware.
- Follow the setup instructions for the ESP32 environment to ensure compatibility.

## Purpose

This code is designed to control the robots during the competition, ensuring optimal performance and compliance with the VSSS IEEE league rules.

## How to Set Up and Use Arduino CLI

Follow these steps to set up the Arduino CLI, install the correct ESP32 version, and compile/upload the firmware to the board:

### 1. Install Arduino CLI

1. Download the Arduino CLI from the [official website](https://arduino.github.io/arduino-cli/installation/).
2. Follow the installation instructions for your operating system.
3. Verify the installation by running the following command in your terminal:
   ```bash
   arduino-cli version
   ```

### 2. Install the ESP32 Core

1. Add the ESP32 board manager URL to your Arduino CLI configuration:
   ```bash
   arduino-cli config add board_manager.additional_urls https://raw.githubusercontent.com/espressif/arduino-esp32/gh-pages/package_esp32_index.json
   ```

2. Update the Arduino CLI index:
   ```bash
   arduino-cli core update-index
   ```

3. Install the ESP32 core version 3.0.2:
   ```bash
   arduino-cli core install esp32:esp32@3.0.2
   ```

### 3. Verify the Installation

Verify the installation and check the available boards:
```bash
arduino-cli board listall
```

Search for the correct board name (e.g., **ESP32 Dev Module**) and make sure it matches the version you're using (esp32:esp32:esp32).

### 4. Compile the Firmware

1. Navigate to the folder where your firmware `.ino` file is located.
    ```bash
    cd /main
    ```

2. Compile the firmware using the following command:
   ```bash
   arduino-cli compile --fqbn esp32:esp32:esp32 --build-path ./build ./main.ino
   ```

### 5. Upload the Firmware to the ESP32

1. List the available serial ports:
   ```bash
   arduino-cli board list
   ```

   This will show you the serial port (e.g., `/dev/ttyUSB0`) of your connected ESP32.

2. Upload the compiled firmware:
   ```bash
   arduino-cli upload -p /dev/ttyUSB0 --fqbn esp32:esp32:esp32 --input-dir ./build
   ```

   Replace `/dev/ttyUSB0` with the appropriate serial port of your ESP32.

### 6. Monitor the Serial Output (Optional)

To view the serial output from your ESP32, use the following command:
```bash
arduino-cli monitor -p /dev/ttyUSB0 -b esp32:esp32:esp32
```

Replace `/dev/ttyUSB0` with the correct serial port.

---

## Troubleshooting

If you encounter any issues, consider the following:

- Ensure the correct board is selected and installed.
- Make sure the correct serial port is used.
- Verify that all dependencies and libraries are installed correctly.
- Check for any updates to the Arduino CLI or ESP32 core.

---

## Additional Notes

- The firmware is designed for robots competing in the VSSS IEEE league, and it must be tailored for each robot's specifications.
- Make sure to follow the rules of the competition for hardware and software configuration.

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
