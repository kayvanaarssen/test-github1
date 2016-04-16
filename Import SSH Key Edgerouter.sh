# Copy the Public Key to the Edgerouter

scp -P 10022 ~/.ssh/id_rsa.pub admin@ictwebmail.com:/tmp/

#Login to edgerouter and load the SSH Key

############ Code to execute on Router ############

configure
loadkey admin /tmp/id_rsa.pub
save