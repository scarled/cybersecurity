# Deauthentificator
## _The Last Markdown Editor, Ever_
## Scope
Deauthenticate a target MAC addres to connect to the router
## Perequisite
- [network interface] - Network interface that can be setup in monitor mode
- [airmon-ng] - To kill all the network trafic 
- [aireplay-ng ] - To send the attack


## How it works
Create a MAC spoffing in order to send multiple request to a router MAC address. The router will block the targert MAC address to connect to the network.

## How to use it
```sh
sh bash.sh <interface_name> <channel> <router_mac> <target_mac>
```

Example:
```sh
sh bash.sh wlan1 8 28:CF:23:8E:4F:70 B6:3F:45:79:73:9A
```
