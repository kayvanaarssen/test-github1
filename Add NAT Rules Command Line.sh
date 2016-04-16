# Login to the Edgerouter
# Enter configure Mode

## Edit the following according to your needs:
Firewall Policy Group: 
## WAN_IN
Firewall Name: 
## WAN_IN
Change Rule Description
rule 99 description 'Rule description'
Change Address
## rule 99 destination address 192.168.1.160
Change port
## rule 99 destination port 80
Enable or Disable Logging
	Enable: 
		## set firewall name WAN_IN rule 99 log enable
	Disable:
		## set firewall name WAN_IN rule 99 log disable
Change the protocol if needed
## rule 99 protocol tcp - tcp_udp
Change the NAT rule Description:
## rule 21 description 'Rule description port 80'
Change the External IP if you have multiple External IPS of not remove the rule
## set service nat rule 21 destination address 185.40.40.1
Change port:
## rule 21 destination port 80
Change inbound-interface if needed:
## rule 21 inbound-interface eth0
Change inbound-address:
## rule 21 inside-address address 192.168.1.160
Change inside-address port:
## rule 21 inside-address port 80
Enable or Disable Logging
	Enable: 
		## set service nat rule 21 log enable
	Disable:
		## set service nat rule 21 log disable
Change protocol:
## rule 21 protocol tcp - tcp_udp
Change the commit comment:
## commit comment "Comment what you have changed"

############ Code to execute on Router ############

configure
set firewall group address-group WAN_IN address 192.168.1.160 

set firewall name WAN_IN rule 99 action accept
set firewall name WAN_IN rule 99 description 'Rule description'
set firewall name WAN_IN rule 99 destination address 192.168.1.160
set firewall name WAN_IN rule 99 destination port 80
set firewall name WAN_IN rule 99 log enable
set firewall name WAN_IN rule 99 protocol tcp

set service nat rule 21 description 'Rule description port 80'
set service nat rule 21 destination address 185.40.40.1
set service nat rule 21 destination port 80
set service nat rule 21 inbound-interface eth0
set service nat rule 21 inside-address address 192.168.1.160
set service nat rule 21 inside-address port 80
set service nat rule 21 log enable
set service nat rule 21 protocol tcp
set service nat rule 21 type destination

commit comment “Comment what you have changed” 
save