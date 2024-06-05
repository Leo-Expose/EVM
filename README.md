# EVM

## Project Overview

This project is an Electronic Voting Machine (EVM) designed for school parliament elections. The EVM consists of three separate booths, each with switches for voting on three roles: Head Boy, Head Girl, and General Captain. The booths are connected to Arduino boards that interface with a Python script running on a PC. The Python script handles vote counting, backup, and serving results via a Flask web server.

## Components

- 3 Arduino boards
- 6 switches per Arduino (for 6 candidates)
- Wires and connectors
- PC for running the Python script

## Features

- Prevents multiple votes from a single press by waiting 5 seconds after each input.
- Backs up vote counts to a file in case of power failure.
- Serves live voting results via a web interface (using HTML & Flask, untested feature).
- Exports results to a printable file.

## Setup and Installation

### Hardware Setup

1. Connect the switches to the Arduino pins (2-7).
2. Ensure all connections are secure and the Arduinos are connected to the PC via USB.

### Software Setup

#### Arduino

1. Open the Arduino IDE.
2. Install the `EEPROM` library (unable to automate with command).
3. Upload the Arduino code to each of the Arduino boards.

#### Python

1. Run the `requirements.bat` file to install dependencies.
2. Configure the correct ports according to the board input port.
3. Edit the candidate names (currently set to 6 names).
4. After plugging in the Arduino boards, start the Python script by running `run.cmd`.

## Usage

1. Start the Python script by executing `run.cmd`.
2. The script will initialize and start counting votes as buttons are pressed.
3. Access the live voting results via the Flask web server.

## Notes

- Ensure all components are properly connected and secured before starting the voting process.
- Regularly back up the vote counts to prevent data loss.
- Test the web interface feature thoroughly before using it in a live scenario.

## License

This project is licensed under the MIT License.
