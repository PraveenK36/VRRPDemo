#!/bin/sh

# Simple health check script
# Return 0 (success) if healthy, 1 (failure) if not

# Check if service is running (simulate with a simple check)
# You can customize this to check actual services
if [ -f /tmp/fail ]; then
    exit 1
fi

exit 0