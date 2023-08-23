# set input parameters
interface=$1
router_mac=$2


echo $router_mac
# activate monitor mode for the interface
ifconfig $interface down 
iw $interface set monitor control
ifconfig $interface up  

airmon-ng start $interface 

if [ -z "${router_mac}" ];
then airodump-ng  --write log $interface
else airodump-ng  --bssid $router_mac --write log $interface 
fi
