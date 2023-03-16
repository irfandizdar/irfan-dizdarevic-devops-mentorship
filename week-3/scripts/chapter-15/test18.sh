#!/bin/bash
# testing lsof with file descriptors
exec 3> ./files/test18file1
exec 6> ./files/test18file2
exec 7< ./files/testfile
/usr/bin/lsof -a -p $$ -d0,1,2,3,6,7
