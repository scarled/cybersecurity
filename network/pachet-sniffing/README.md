# Pachet Sniffing
## Scope
Capture all network trafic and save it in local logs files

## Perequisite
- [network interface] - Network interface that can be setup in monitor mode
- [airmon-ng] - To kill all the network trafic 
- [airodump-ng ] - To copy the traffic


## How it works
Capture all network traffic via WI-FI using network interface in monitor mode an capture put it in log files on local machine.

## How to use it
```sh
sh bash.sh <interface_name> router_mac(optional)
```

Example:
```sh
sh bash.sh wlan1  28:CF:23:8E:4F:70 
```
