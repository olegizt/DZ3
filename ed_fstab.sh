#Add mount RAID partition

for i in $(seq 1 5); do sudo su -c "echo /dev/md0p$i /raid/part$i ext4 defaults 0 1 >> /etc/fstab"; done
