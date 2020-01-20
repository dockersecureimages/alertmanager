#!/bin/sh

sed -i "s/\${SLACK_USERNAME}/${SLACK_USERNAME}/g" /etc/alertmanager/alertmanager.yml
sed -i "s/\${SLACK_CHANNEL_ALL}/${SLACK_CHANNEL_ALL}/g" /etc/alertmanager/alertmanager.yml
sed -i "s#\${SLACK_WEBHOOK_ALL}#${SLACK_WEBHOOK_ALL}#g" /etc/alertmanager/alertmanager.yml
sed -i "s/\${SLACK_CHANNEL_PROD}/${SLACK_CHANNEL_PROD}/g" /etc/alertmanager/alertmanager.yml
sed -i "s#\${SLACK_WEBHOOK_PROD}#${SLACK_WEBHOOK_PROD}#g" /etc/alertmanager/alertmanager.yml

#cat /etc/alertmanager/alertmanager.yml

echo "===== Checking AlertManager configuration ====="
amtool check-config /etc/alertmanager/alertmanager.yml

echo "===== Starting AlertManager ====="
exec "$@"
