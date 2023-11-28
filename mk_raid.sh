#Create RAID6

mdadm --zero-superblock --force /dev/sd{b..f}
mdadm --create --verbose /dev/md0 -l 6 -n 5 /dev/sd{b..f}
mkdir /etc/mdadm
echo "DEVICE partitions" > /etc/mdadm/mdadm.conf
mdadm --detail --scan --verbose | awk '/ARRAY/ {print}' >> /etc/mdadm/mdadm.conf
