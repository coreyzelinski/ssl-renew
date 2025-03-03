# ssl-renew
Simple Function and Cron Scripts For Installing and Using Certbot

## What are the functions?

- certbotinstall - installs certbot on your system
- newcert - install a new certificate
- renewcerts - updates certificates

## Sourcing the function
To source the functions simply
```
. sslfunctions
```

Use this command to add this function on login
```
echo
"# Get the ssl  function
if [ -f ~/sslfunction ]; then
        . ~/ssl/function
fi" | tee -a /root/.bash_profile
```

## Cronjobs
You can install cert updates by typing crontab -e and adding the bit below then writing the file out. You can get cronjob times from https://crontab.guru/ 
```
0 0 * * * /bin/sh /root/update-certs.sh
```

