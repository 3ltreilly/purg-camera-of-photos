#! /bin/bash -x


# clear files
cd ~
rm -f cam_pics.txt
rm -f bernie_photo.txt
rm -f jenn_photo.txt
rm -f delete_me.txt

#location on camara
cd /Volumes/NO\ NAME/DCIM/100MSDCF

ls -1 > ~/cam_pics.txt

cd ~/Pictures/Photos\ Library.photoslibrary/Masters/2017

ls -1 -R | grep .[Jj][Pp][Gg] > ~/bernie_photo.txt
cd ~
grep -w -f cam_pics.txt bernie_photo.txt > delete_me.txt

cd /Users/jennjillson/Pictures/Photos\ Library.photoslibrary/Masters/2017
ls -1 -R | grep .[Jj][Pp][Gg] > ~/jenn_photo.txt
cd ~
grep -w -f cam_pics.txt jenn_photo.txt >> delete_me.txt

