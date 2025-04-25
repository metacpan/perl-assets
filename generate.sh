cd blessed/src/
for f in `ls *.svg | sed s/\.svg//g`; do 
	for s in 64 300 800 1500 2500; do 
		rsvg-convert -f svg -w $s -h $s $f.svg > ../exports/perl-$f-$s.svg;
		rsvg-convert -f png -w $s -h $s $f.svg > ../exports/perl-$f-$s.png;
	done
done

convert -background transparent -define 'icon:auto-resize=16,24,32,64' 097.svg ../exports/favicon.ico
