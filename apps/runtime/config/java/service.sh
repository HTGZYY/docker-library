#!/bin/bash

cp /opt/config/java/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
chmod +x /etc/supervisor/conf.d/supervisord.conf

# start by supervisord
/usr/bin/supervisord
supervisorctl start $JAVA_APP
tail -f /dev/null
