#/bin/bash
#Merica Solutions mount iso images to  /mnt/jukebox

if [ ! -d "/jukebox" ]; then  mkdir /jukebox
fi

for isofile in ./*.iso
do
filename="${isofile##*/}"
filename="${filename%.*}"
echo  "The file is $isofile and filename is $filename"
mkdir "/jukebox/$filename"
mount -o loop $isofile "/jukebox/$filename"
done
