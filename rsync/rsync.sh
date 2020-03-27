#!/bin/bash

expect -c "
set timeout 10
spawn rsync -rahuv -e \"ssh -p 22 -l user -o StrictHostKeyChecking=no\" {{dirname}}/ root@{{ ip_address }}:{{dirname}}
expect password:
send \"{{sshpass}}\n\"
interact
"
