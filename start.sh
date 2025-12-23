#!/bin/sh

# Install keepalived and dependencies
apk add --no-cache keepalived iproute2 iputils

# Make check script executable
chmod +x /usr/local/bin/check_script.sh

# Enable IP forwarding
echo 1 > /proc/sys/net/ipv4/ip_forward

# Start keepalived in foreground
exec keepalived -n -l -f /etc/keepalived/keepalived.conf