#!/bin/bash

cat tld | while read domain
do
	DATA=$(python trusttrees.py --open --target $domain | grep FAILED_RED | sort | uniq)
	echo $DATA >> logfile
done

