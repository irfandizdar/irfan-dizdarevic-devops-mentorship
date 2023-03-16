#!/bin/bash
# testing closing file descriptors
exec 3>./files/test17file
echo "This is a test line of data" >&3
exec 3>&-
cat ./files/test17file
exec 3> ./files/test17file
echo "This'll be bad" >&3
