#!/bin/bash

cat nonexistentfile
file /sbin/ifconfig
grep root /etc/passwd /etc/nofiles > grepresults
/etc/init.d/sshd start > /var/tmp/output
/etc/init.d/crond start > /var/tmp/output 2>&1

echo "Redirecting stdout and stderr" 

#stdout
exec 1> /var/tmp/output
#stderr
exec 2> /var/tmp/error

cat nonexistentfile
file /sbin/ifconfig
grep root /etc/passwd /etc/nofiles > grepresults
/etc/init.d/sshd start > /var/tmp/output
/etc/init.d/crond start > /var/tmp/output 2>&1

echo "Script finished" 

