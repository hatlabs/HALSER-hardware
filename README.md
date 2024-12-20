# Hat Labs Serial Interface Device (HALSER)

This repository contains the Hat Labs Serial Interface Device (HALSER) hardware design. HALSER is a powerful microcontroller development board designed for marine environments that allows interfacing with legacy NMEA 0183, RS-232 and UART devices.

Since the board has native WiFi and NMEA 2000 compatible CAN bus connectivity, it can be used to create boards with either Signal K or native NMEA 2000 connectivity (or both!).

## Features

The main design features include:

- Built around ESP32-C3, a powerful 32-bit microcontroller with 4 MB of flash
- Wide-range 5-32 V power input with surge protection
- NMEA 2000 compatible CAN interface (4-pin pluggable terminal block screw connector)
- One transmitting and one receiving RS-485 interface for bidirectional communication with NMEA 0183 devices (3-pin pluggable terminal block screw connectors)
- One RS-232 interface for communication with legacy devices (3-pin pluggable terminal block screw connector)
- One UART interface for general-purpose communication (3-pin pluggable terminal block screw connector). UART is 5V tolerant and the output voltage can be set to 3.3V or 5V with a jumper.
- 1-Wire interface (3-pin 2.54 mm header)
- I2C interface with a 4-pin 2.54 mm header
- USB type C interface for programming and serial communication
- All above interfaces with proper electromagnetic compatibilty (EMC) design -- the device won't interfere with navigational devices or radio equipment
- All available general-purpose input/output (GPIO) pins broken out to a separate header
- Board designed to fit low-cost waterproof 100x68x50 mm enclosures

Rendering of a version 1.0.0 board:

<!--
Front side.
![Rev. 1.0.0 board](images/pcb_rev_2.0.0.jpg)

Back side.
![Rev. 1.0.0 board bottom side](images/pcb_rev_2.0.0-back.jpg)

-->

## Getting HALSER

HALSER will be available for purchase at the [Hat Labs web store](https://shop.hatlabs.fi/).

## Documentation

HALSER documentation will be available at the [project GitHub Pages](https://docs.hatlabs.fi/halser/).
