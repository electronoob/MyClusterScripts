echo clearing merged.img
rm ./work/merged.img
echo merging partitions 1 and 2 into merged.img
dd if=./work/dump.img1 of=./work/merged.img bs=512 
dd if=./work/dump.img2 of=./work/merged.img bs=512 seek=137216
