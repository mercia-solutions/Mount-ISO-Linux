#/bin/bash
#Merica Solutions mount iso images to  /mnt/jukebox

for isofile in  ./*.iso
do

filename="${isofile##*/}"
filename="${filename%.*}"
echo  "The file is $isofile and filename is $filename"
umount  "/jukebox/$filename"
rmdir "/jukebox/$filename"
done
 
