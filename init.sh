echo "Enter username: "
read user_name
echo "Enter password: "
read user_password


printf "#!/bin/sh\ncurl -X POST -H \"Cache-Control: no-cache\" -H \"Postman-Token: 6a63004f-5575-e67a-42de-8303876c65fb\" -d  \"mode=191&username=$user_name&password=$user_password&a=1474975622707&producttype=0\" \"http://10.0.0.1:8090/login.xml\" " > weboniselogin.sh

var=$(pwd)
line="*/1 * * * * $var/weboniselogin.sh"
(crontab -l; echo "$line" ) | crontab -
