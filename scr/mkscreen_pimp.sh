#!/bin/bash
rm /arc/upl/img/*
rm /arc/upl/img_large/*
rm /arc/upl/img_small/*
cd /arc/upl/vids/

mediainfo --Inform="file:///arc/scr/template.txt" /arc/upl/vids/* > /arc/upl/inf/filesinfo.txt

mtn -i -t -c 2 -r 3 -w 800 -O /arc/upl/img_large   /arc/upl/vids
mtn -i -t -c 4 -r 16 -O /arc/upl/img_small /arc/upl/vids
#mtn -i -t -c 3 -r 12 -f /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -T JAVDELUXE.COM -O /arc/upl/img_small /arc/upl/vids

for i in *
	 do rar m -r- -m0 -v495000000b -sm500000000 -ximg -xinf -xrars "/arc/upl/rars/$i" "$i";
	 #do rar a -r- -m0 -v295000000b -sm300000000 -ximg -xinf -xrars "/arc/upl/rars/$i" "$i"

done

mv /arc/upl/rars/* /arc/upl/vids/
