# set input parameters
interface=$1
channel=$2
router_mac=$3


echo $router_mac
# activate monitor mode for the interface
ifconfig $interface down 
iw $interface set monitor control
ifconfig $interface up  

airmon-ng start $interface $channel

airodump-ng --bssid $router_mac --write log $interface
