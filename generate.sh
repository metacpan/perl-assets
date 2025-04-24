cd blessed/src/
for f in `ls *.svg | sed s/\.svg//g`; do 
	for s in 64 300 800 1500 2500; do 
		rsvg-convert -f svg -w $s $f.svg > ../exports/perl-$f-$s.svg;
		rsvg-convert -f png -w $s $f.svg > ../exports/perl-$f-$s.png;
	done
done
