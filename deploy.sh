#!/bin/bash

#ansible ph-dev-qa -m unarchive -u deploy -a "src=/home/terraform/.shell/machine_deploy.sh.tgz dest=/home/ethen/.shell/ copy=yes" -b > /dev/null 2>&1
#99999

ansible jb -m unarchive -u deploy -a "src=/home/terraform/.shell/machine_config.sh.tgz dest=/home/ethen/.shell/ copy=yes" -b > /dev/null 2>&1
ansible jb -m unarchive -u deploy -a "src=/home/terraform/.file/check.tgz dest=/root/ copy=yes" -b > /dev/null 2>&1
ansible gamesvr-jb -m unarchive -u deploy -a "src=/home/terraform/.file/game_svr.tgz dest=/opt/ copy=yes" -b > /dev/null 2>&1
ansible jb-gateway -m unarchive -u deploy -a "src=/home/terraform/.file/gateway_svr.tgz dest=/opt/ copy=yes" -b > /dev/null 2>&1
ansible jb-service -m unarchive -u deploy -a "src=/home/terraform/.file/service_svr.tgz dest=/opt/ copy=yes" -b > /dev/null 2>&1
ansible jb-minio -m unarchive -u deploy -a "src=/home/terraform/.file/minio_svr.tgz dest=/opt/ copy=yes" -b > /dev/null 2>&1
ansible gamesvr-jb-redis -m unarchive -u deploy -a "src=/home/terraform/.file/redis.tgz dest=/usr/local/ copy=yes" -b > /dev/null 2>&1
ansible platform-jb-redis -m unarchive -u deploy -a "src=/home/terraform/.file/redis.tgz dest=/usr/local/ copy=yes" -b > /dev/null 2>&1
