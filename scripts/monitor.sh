#!/bin/bash
# System monitoring script
echo "📊 System Monitoring Report"
echo "============================"

echo "🖥️ Uptime:"
uptime

echo -e "\n📂 Disk Usage:"
df -h

echo -e "\n🔥 Top Processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 10

echo -e "\n🔑 Failed SSH Logins:"
grep "Failed password" /var/log/auth.log | tail -n 5
