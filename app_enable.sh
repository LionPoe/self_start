#!/bin/bash
systemctl stop firewalld.service
systemctl disable firewalld.service
if `cp /root/app_service.conf /usr/lib/systemd/system/app_service`;
    echo "create app service success"
else
    echo "create app service fialed"
fi
mkdir -p /usr/local/app/bin/
if `cd /root/app_startup.sh /usr/local/app/bin/startup.sh`;
    echo "create self start  success"
else
    echo "create self start  fialed"
fi
chmod 755 /usr/lib/systemd/system/app_service
chmod 755 /usr/local/app/bin/startup.sh