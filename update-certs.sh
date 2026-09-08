#!/bin/bash

service nginx stop || exit 1
certbot renew
certbot_status=$?
service nginx start || exit 1
exit "$certbot_status"
