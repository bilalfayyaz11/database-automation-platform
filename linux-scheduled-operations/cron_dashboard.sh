#!/bin/bash

echo "=================================="
echo "    CRON JOB STATUS DASHBOARD"
echo "=================================="
echo "Generated on: $(date)"
echo

echo "Current User Cron Jobs:"
crontab -l
echo

echo "Recent Cron Activity:"
sudo tail -10 /var/log/cron
echo

echo "Pending AT Jobs:"
atq
echo

echo "Cron Service:"
systemctl is-active crond

echo
echo "Dashboard Complete"
