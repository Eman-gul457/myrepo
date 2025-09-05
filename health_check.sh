#!/bin/bash

# Health Check Script
# This script checks disk space, memory, CPU load, and if a service (like nginx) is running

echo "===== Health Check Report ====="
date

# Disk usage check
echo "Disk Usage:"
df -h | grep '/$'   # shows disk usage of root filesystem

# Memory usage check
echo "Memory Usage:"
free -h

# CPU load check
echo "CPU Load:"
uptime

# Service check (nginx as example, you can replace with apache2, sshd, etc.)
echo "Checking if nginx is running..."
if systemctl is-active --quiet nginx; then
    echo "✅ Nginx is running."
else
    echo "❌ Nginx is NOT running."
fi

echo "==============================="
