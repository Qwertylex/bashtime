#!/bin/bash
hextime=`nc time.nist.gov 37 | xxd -u -p`
time=`echo "ibase=16; $hextime" | bc`
perl -e "print scalar(localtime($time-2208988800))"
