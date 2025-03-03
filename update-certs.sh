#!/bin/bash
#PATH=
service nginx stop || exit 1
certbot renew || exit 1
service nginx start || exit 1
exit 0

