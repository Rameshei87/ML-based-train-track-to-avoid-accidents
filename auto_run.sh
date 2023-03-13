#!/bin/sh

ps -ef | grep /home/cbsportal/portal/bin | grep -v grep | awk '{print $2}' | xargs kill -9

cd /home/cbsportal/portal/server/default/work/jboss.web
rm -rf localhost/

cd /home/cbsportal/portal/server/default/
rm -rf tmp/
rm -rf work/

cd /home/cbsportal/portal/server/default/log/
rm -f *

cd /home/cbsportal/portal/bin/
rm -f nohup.out

nohup sh run.sh -b 0.0.0.0 &

