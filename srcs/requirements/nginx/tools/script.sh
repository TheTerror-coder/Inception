#!/bin/bash

/etc/init.d/nginx start
/etc/init.d/nginx stop

nginx -g "daemon off;"
