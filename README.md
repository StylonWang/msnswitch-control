# msnswitch-control
This project aims to reproduce a Linux/Unix version of netutility (Windows version) to search for MSNSwitch devices on the local network using ethernet packets.

The analysis from wireshark capture seems to suggest that:
1. "Search" ethernet packets are sent as ethernet broadcast. Two such packets are sent with a 1-second internal between them.
2. MSNSwitch devices on the local network replies with a ethernetp packet

It is not yet known how netutility find out the IP address with the source MAC address from the reply packet in #2 above.

Example code to send and receive raw sockets from:
https://gist.github.com/austinmarton/1922600
https://gist.github.com/austinmarton/2862515
