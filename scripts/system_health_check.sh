#!/bin/bash



current_date=$(date +%F)

reportfile=system_report_$current_date

mkdir -p "$reportfile"
echo "----------------------------------------------" >> $reportfile
echo "System Health Checkup !!" >> $reportfile
echo "CPU USAGE AS OF $(date)" >> $reportfile
mpstat -u >> $reportfile
echo "----------------------------------------------" >> $reportfile
echo "Free Available Memory" >> $reportfile
echo "$(free -m | grep 'Mem' | awk '{print $NF}')MB" >> $reportfile
echo "----------------------------------------------" >> >> $reportfile
echo "Disk Usage Is: $(df / | grep '/' | awk '{print $5}')" >> $reportfile
echo "----------------------------------------------" >> $reportfile
