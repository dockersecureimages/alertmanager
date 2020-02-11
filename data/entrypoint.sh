#!/bin/sh

cp /etc/alertmanager/alertmanager.yml.tmpl /etc/alertmanager/alertmanager.yml

sed -i "s/\${EMAIL_TO_ADMIN}/${EMAIL_TO_ADMIN}/g" /etc/alertmanager/alertmanager.yml
sed -i "s/\${EMAIL_TO_CLIENT}/${EMAIL_TO_CLIENT}/g" /etc/alertmanager/alertmanager.yml
sed -i "s/\${EMAIL_FROM}/${EMAIL_FROM}/g" /etc/alertmanager/alertmanager.yml
sed -i "s/\${SMTP_HOST_PORT}/${SMTP_HOST_PORT}/g" /etc/alertmanager/alertmanager.yml
sed -i "s/\${SMTP_USERNAME}/${SMTP_USERNAME}/g" /etc/alertmanager/alertmanager.yml
sed -i "s#\${SMTP_PASSWORD}#${SMTP_PASSWORD}#g" /etc/alertmanager/alertmanager.yml
sed -i "s/\${SMTP_TLS}/${SMTP_TLS}/g" /etc/alertmanager/alertmanager.yml

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
