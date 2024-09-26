#!/bin/bash

ftphost='entenhaus.en'
ftpuser='dagobert'
ftppassword='panzerknacker'

curlftpfs -r $ftpuser:$ftppassword@$ftphost /mnt/ftp

rsync -a -P -u --stats /mnt/ftp /home/dagobert/ftp

fusermount -u /mnt/ftp
