#!/bin/bash
# using an alternative file descriptor
exec 3> ./files/test13out
echo "This should display on the monitor"
echo "and this should be stored in the file" >&3
echo "Then this should be back on the monitor"
