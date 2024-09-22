#!/bin/sh
id=$( xinput | grep "Touchpad" | awk '{print $6}'  |  sed 's/[^[:digit:]]/ /g; s/  */ /; s/^  *//')
#prop_id=$()
prop_id=$(xinput list-props $id | grep "Tapping Enable" | awk '{print $4}' | sed 's/[^[:digit:]]/ /g; s/  */ /; s/^  *//' | xargs)
xinput set-prop $id $prop_id 1
