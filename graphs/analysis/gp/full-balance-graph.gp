set datafile separator ','
set key autotitle columnhead outside
set xlabel "Game Id"
set xtic 1
set terminal svg size 800, 400 dynamic
set output "../balance-value-graph.svg"

set style rect fc lt -1 fs solid 0.15 noborder

set obj rect from 1, graph 0 to 4.5, graph 1
set obj rect from 8.5, graph 0 to 12.5, graph 1
set obj rect from 16.5, graph 0 to 20.5, graph 1

plot '../data/Full-Export.csv' using 1:4:xticlabel(3) with linespoints, '' using 1:5 with linespoints

set output "../balance-value-graph-kd.svg"
plot '../data/Full-Export.csv' using 1:4:xticlabel(3) with linespoints, '' using 1:6 with linespoints, '' using 1:7 with linespoints