#!/bin/bash

echo "===== SYSTEM HEALTH CHECK ====="
echo "Date: $(date)"
echo ""

# CPU Usage

echo "🔹 CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "Used: " $2 + $4 "%"}'
echo ""

# Memory Usage

echo "🔹 Memory Usage:"
free -h | awk '/Mem/ {print "Used: "$3 " / Total: " $2}'
echo ""

# Disk Usage

echo "🔹 Disk Usage:"
df -h | awk '$NF=="/"{print "Used: "$3 " / Total: " $2 " (" $5 ")"}'
echo ""

# Load Average

echo "🔹 Load Average:"
uptime | awk -F'load average:' '{print $2}'
echo ""

echo "===== END ====="
