#!/bin/bash
# Get touchpad id via xinput ($ xinput list)
DEVICE=

# Prevent using script if a touchpad isn't founded
if [ -z "$DEVICE" ]; then
	echo "* No touchpad device found via xinput"
	exit 1
fi

# Get touchpad state
STATUS=$(xinput list-props "$DEVICE" | grep "Device Enabled" | awk -F ':' '{print $2}' | tr -d '[:space:]')

# Toggle enable/disable
if [ "$STATUS" -eq 1 ]; then
	xinput disable "$DEVICE"

	# Desktop notification (optional, comment this (and above) if you haven't libnotify)
	# notify-send -i touchpad-disabled-symbolic "Touchpad" "Touchpad disabled."
      
	# Terminal notification
	echo "* Touchpad disabled."

        # Custom actions below...
        # ...
else
	xinput enable "$DEVICE"
        echo $DEVICE

	# Desktop notification.
	# notify-send -i touchpad-enabled-symbolic "Touchpad" "Touchpad enabled."

	# Terminal notification
	echo "* Touchpad enabled."

	# Custom actions below...
	# ...
fi
