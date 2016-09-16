echo removing work files
rm ./work/dump.img1
rm ./work/dump.img2
echo stripping partitions from image template to work directory
dd if=./image/template.img of=./work/dump.img2 bs=512 skip=137216
dd if=./image/template.img of=./work/dump.img1 bs=512 count=137215

