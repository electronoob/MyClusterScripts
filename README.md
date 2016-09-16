# MyClusterScripts

./gen/split.sh

this uses my resized raspbian image file which can be found at:
www.electronoob.com/filesystem.tar.bz2

I mounted the original raspbian lite filesytem in loop0 and resized with gparted, to save me time when writing to microsd as I am using cheap slow cards.

split.sh will use dd to extract the 2 partitions of said image.

./gen/patch.sh

this will use sed to do string replacement on two files, /etc/hosts and /etc/hostname, to allow pre-configuration of the pizero's hostname.

sh patch.sh electronoob1
would set the hostname for this particular generated image to electronoob1.

this will automatically call ./join.sh which in turn mounts the second partition and copies over hostname, hosts, files.

upon completion it is simply a matter of using dd to copy the image to sdcard.





