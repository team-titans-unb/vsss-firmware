# VSSS Firmware Repository

This repository contains the firmware and related resources for the Titans robotics team, developed for the Very Small Size Soccer League (VSSS). Below is an overview of the repository's structure and its purpose.

## Repository Structure

```bash
vsss-firmware/
├── docs/
├── hardware/
├── main/
├── notebooks/
└── tests/
```

- **`main/`**  
    Contains the main firmware code for the robots. This is the core of the repository, where the competition code is developed and maintained.

- **`notebooks/`**  
    Includes Jupyter Notebooks used for testing and integrating the firmware with Python. These notebooks are auxiliary tools for validating functionalities, simulating behaviors, and testing communication.

- **`tests/`**  
    A dedicated folder for organizing and running tests on the robot's firmware. Use this folder to create test cases, validate performance, and debug the firmware.

- **`docs/`**  
    Contains documentation related to the project, including guides, technical specifications, and other resources to help understand and use the repository effectively.

- **`hardware/`**  
    Includes hardware design files, schematics, and related resources for the robots. This folder is essential for understanding the physical components and their integration with the firmware.

## Purpose

The repository is designed to:

- Develop and maintain the firmware for the robots.
- Provide tools for testing and integration.
- Organize and execute tests to ensure the firmware's reliability and performance.
- Document the project and provide hardware resources for replication or further development.

## Requirements

- ESP32 board version 3.0.2 installed and configured.
- Python and necessary dependencies for running notebooks.
- Tools and dependencies for compiling, uploading, and testing the firmware.

## How to Use

1. Navigate to the appropriate folder based on your task:
     - Use `main/` for firmware development.
     - Use `notebooks/` for testing and integration with Python.
     - Use `tests/` for organizing and running firmware tests.
     - Use `docs/` for accessing project documentation.
     - Use `hardware/` for hardware design and related resources.
2. Follow the instructions in each folder's README for specific details.
3. Ensure all dependencies are installed and configured before running the code or tests.

## How to Contribute

We welcome contributions to improve the firmware and related resources. Please follow these guidelines to ensure a smooth collaboration process:

### Commit Guidelines

Use standardized prefixes in your commit messages to indicate the purpose of the changes. Here are some examples:

- **`wip:`** Work in progress. Use this for incomplete features or ongoing work.
- **`feat:`** A new feature added to the firmware or tools.
- **`fix:`** A bug fix or correction in the code.
- **`refactor:`** Code restructuring or optimization without changing functionality.
- **`docs:`** Documentation updates or improvements.
- **`test:`** Adding or updating tests.
- **`chore:`** Miscellaneous tasks like dependency updates or build process changes.

### Contribution Steps

1. **Clone this Repository**  
    Clone the repository to your local machine using the following command:  
    ```bash
    git clone https://github.com/your-organization/vsss-firmware.git
    ```

2. **Create a Branch**  
    Create a new branch for your changes. Use a descriptive branch name that reflects the purpose of your changes, e.g., `feat/add-new-sensor`:  
    ```bash
    git checkout -b feat/add-new-sensor
    ``` 
        Use a descriptive branch name that reflects the purpose of your changes, e.g., `feat/add-new-sensor`.

3. **Make Changes**  
        Implement your changes and ensure they align with the repository's coding standards.

4. **Test Your Changes**  
        Run the tests in the `tests/` folder to verify that your changes do not introduce issues.

5. **Submit a Pull Request**  
        Open a pull request to the main repository. Provide a clear description of your changes and reference any related issues.

6. **Review and Feedback**  
        Address any feedback provided during the review process to get your changes merged.

By following these guidelines, you help maintain the quality and consistency of the repository. Thank you for contributing!
