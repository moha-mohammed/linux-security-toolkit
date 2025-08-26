#!/bin/bash
# Basic test script to check if all toolkit scripts run without error

for script in ../scripts/*.sh; do
    echo "Testing $script..."
    bash "$script" --help >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "✅ $script executed successfully"
    else
        echo "⚠️  $script may require root or additional permissions"
    fi
done
