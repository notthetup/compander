set title "Compressor Ratio Curve"
set yrange [-90:30]
set xrange [-90:30]
set lmargin 9
set rmargin 9
set ylabel "Output [dB]" offset 1
set xlabel "Input [dB]" offset 1
set tics out scale 3,2
set xtics 10
set mxtics 2
set ytics 10
set mytics 2
set grid xtics ytics mxtics mytics
set tics nomirror
set style line 1 lc rgb '#0060ad' lt 1 lw 4 pt 0
set style line 2 lc rgb 'grey' lt 2 lw 0.5 pt 0

plot 'compand.dat' notitle with linespoints ls 1, x notitle with linespoints ls 2