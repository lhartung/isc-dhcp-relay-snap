# DHCP Relay Agent

This is a snap version of the official isc-dhcp-relay package, which would be
suitable for running on lightweight Ubuntu Core systems.

## Installation

After installing the snap, it is necessary to connect the network-control
interface, which enables raw socket access. Then set the appropriate DHCP
server address.  After running the following commands, the DHCP relay agent
will run automatically.

```bash
snap install isc-dhcp-relay-lhartung
snap connect isc-dhcp-relay-lhartung:network-control
snap set isc-dhcp-relay-lhartung server="<server address>"
```

## Contributions

Contributions are welcome, especially if your use case requires configuring any
of the other dhcrelay command-line arguments.
