#!/bin/bash

echo "=== VRRP Web Server Failover Demo ==="
echo ""

echo "Testing which router is serving the Virtual IP (192.168.100.100)..."
echo ""

# Continuous loop to show which router is active
while true; do
    RESPONSE=$(docker exec vrrp-client curl -s http://192.168.100.100 2>/dev/null)
    TIMESTAMP=$(date '+%H:%M:%S')

    if echo "$RESPONSE" | grep -q "ROUTER 1"; then
        echo "[$TIMESTAMP] 🟢 ROUTER 1 is ACTIVE (MASTER)"
    elif echo "$RESPONSE" | grep -q "ROUTER 2"; then
        echo "[$TIMESTAMP] 🔵 ROUTER 2 is ACTIVE (MASTER)"
    else
        echo "[$TIMESTAMP] ❌ No response from Virtual IP"
    fi

    sleep 1
done