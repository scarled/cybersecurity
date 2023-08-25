# Capture Handshake
## Scope
Capture the handshake packet used in wpa wi fi connection.
## Perequisite
- [network interface] - Network interface that can be setup in monitor mode
- [airmon-ng] - To kill all the network trafic 
- [aireplay-ng ] - To send the attack
- [airodump-ng]  - Capture the traffic

## How it works
Create a MAC spoffing in order to send multiple request to a router MAC address. The router will block the targert MAC address to connect to the network. When the target what to reconect, we will user airodump-ng  to capture the handshake packets and save it in wpa_handshake file.

After that we can use tool like aircrack-ng to find the passwowrd (using brute force or wordlist.) ex:

```
aircrack-ng wpa_handshacke-01.cap -w wordlist.txt
```

## How to use it
```sh
sh bash.sh <interface_name> <channel> <router_mac> <target_mac>
```

Example:
```sh
sh bash.sh wlan1 8 28:CF:23:8E:4F:70 B6:3F:45:79:73:9A
```
