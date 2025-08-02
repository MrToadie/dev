#!/bin/bash

# June 2011
# Usage:
# HOSTLIST=( 'localhost' '192.168.0.220' 'yoururl.org' 'archlinx.org')
# ===========================

echo "IP oder Hostname:"
read HOSTLIST


for HOST in ${HOSTLIST[@]}
do
	echo '================================================'
	echo 'NSLOOKUP |' $HOST
	echo '================================================'
		nslookup $HOST
	echo '================================================'
	echo 'MX RECORD (Mail Exchange) |' $HOST
	echo '================================================'
		nslookup -query=mx $HOST
	echo '================================================'
	echo 'NS RECORD (Name Server) |' $HOST
	echo '================================================'
		nslookup -type=ns $HOST
	echo '================================================'
	echo 'SOA RECORD (start of authority) |' $HOST
	echo '================================================'
		nslookup -type=soa $HOST
	echo '================================================'
	echo 'DNS RECORDS (any) |' $HOST
	echo '================================================'
		nslookup -type=any $HOST
done
