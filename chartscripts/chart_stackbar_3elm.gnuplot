# outputpath, name0, name1, name2
set datafile separator ","
set style fill solid border lc rgb "black"
set boxwidth 0.8 relative
set terminal png size 1024,576
set output outputpath
set xtics rotate by -90
plot inputpath using 0:($2+$3+$4):xtic(1) with boxes lw 2 lc rgb "light-pink" title name2, \
"test.csv" using 0:($2+$3) with boxes lw 2 lc rgb "light-green" title name1, \
"test.csv" using 0:($2) with boxes lw 2 lc rgb "light-blue" title name0
replot