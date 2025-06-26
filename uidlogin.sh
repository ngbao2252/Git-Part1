#Write a shell script that given a person's uid, tells you how many times that person is logged on.												
#!/bin/bash
#check if UID provided?
if [ $# -ne 1 ]; then 
echo "Usage: $0 <$1>"
exit 1
fi
uid=$1
if  ! id "$uid" >/dev/null 2>&1; then
echo "error: UID doen not exist"
exit 1
fi
#count
count=$(who|awk '{print $1}'|grep -c "^$uid")
echo "User with UID $uid is logged in $count times"
