# ASM_Hardware_UART_Half_Duplex

This project introduces and demonstrates the usage of a hardware UART
(Universal Asynchronous Receiver-Transmitter) in AVR assembly language.
The goal is to familiarize users with the hardware UART functionality 
and provide an alternative to the software UART implementation.

Features
- Supports asynchronous serial communication.
- Baud rate set to 9600.
- Character size: 8 bits.
- No parity bit.
- 1 stop bit.
- Enables receive (RxB) and transmit (TxB) functionality.
- Half-duplex mode.

Getting Started
1. Clone the repository or download the source code.
2. Adjust the configuration parameters in the code if necessary.
3. Compile and upload the program to your AVR microcontroller using the appropriate tools.
4. Connect your device to the UART pins (Rx and Tx) of the AVR microcontroller.
5. Use a terminal program or another microcontroller to communicate with the AVR device.

Refer to the comments in the code for more detailed information on how to use and configure the hardware UART.

License
This project is licensed under the MIT License.
