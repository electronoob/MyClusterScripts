echo mounting dump.img2
mount ./work/dump.img2 ./work/tmpmount/
echo patching then copying hosts and hostname files to /etc/
sed 's/piz001/'"$1"'/g' ./files/hosts > ./work/hosts
sed 's/piz001/'"$1"'/g' ./files/hostname > ./work/hostname
cp ./work/hosts ./work/tmpmount/etc/hosts
cp ./work/hostname ./work/tmpmount/etc/hostname
echo unmount dump.img2
umount ./work/tmpmount
sync
sh join.sh
