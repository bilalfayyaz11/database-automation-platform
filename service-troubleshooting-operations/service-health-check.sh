#!/bin/bash

echo "=== System Service Health Check ==="
echo "Date: $(date)"
echo

CRITICAL_SERVICES=("sshd" "NetworkManager" "firewalld")

echo "=== Critical Services Status ==="
for service in "${CRITICAL_SERVICES[@]}"
do
    if systemctl is-active --quiet "$service"
    then
        echo "✓ $service: ACTIVE"
    else
        echo "✗ $service: INACTIVE"
    fi
done

echo
echo "=== Failed Services ==="
systemctl --failed

echo
echo "=== Network Connectivity ==="
if ping -c 1 8.8.8.8 &>/dev/null
then
    echo "✓ Internet connectivity: OK"
else
    echo "✗ Internet connectivity: FAILED"
fi

if nslookup google.com &>/dev/null
then
    echo "✓ DNS resolution: OK"
else
    echo "✗ DNS resolution: FAILED"
fi

echo
echo "=== Disk Usage ==="
df -h /

echo
echo "=== Recent Errors ==="
journalctl -p err --since "1 hour ago" --no-pager | tail -10

echo
echo "Health check completed."
