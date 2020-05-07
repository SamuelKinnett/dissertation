set datafile separator ','
set key autotitle columnhead outside
set xlabel "Game Id"
set xtic 1
set terminal svg size 800, 400 dynamic
set output "../balance-value-procedural-graph.svg"

set style rect fc lt -1 fs solid 0.15 noborder

set obj rect from 1, graph 0 to 2.5, graph 1
set obj rect from 4.5, graph 0 to 6.5, graph 1
set obj rect from 8.5, graph 0 to 10.5, graph 1

plot '../data/Full-Procedural-Export.csv' using 1:4:xticlabel(3) with linespoints lt rgb "purple", '' using 1:5 with linespoints lt rgb "green"

set output "../balance-value-procedural-graph-kd.svg"
plot '../data/Full-Procedural-Export.csv' using 1:4:xticlabel(3) with linespoints lt rgb "purple", '' using 1:6 with linespoints lt rgb "red", '' using 1:7 with linespoints lt rgb "blue"

set title "Which team had better players overall?"
set output "../balance-value-procedural-graph-q1.svg"
plot '../data/Full-Procedural-Export.csv' using 1:5:xticlabel(3) with linespoints lt rgb "green", '' using 1:8 with linespoints lt rgb "red", '' using 1:9 with linespoints lt rgb "goldenrod", '' using 1:10 with linespoints lt rgb "blue";

set title "Which team did the level layout tend to favour more?"
set output "../balance-value-procedural-graph-q2.svg"
plot '../data/Full-Procedural-Export.csv' using 1:4:xticlabel(3) with linespoints lt rgb "purple", '' using 1:11 with linespoints lt rgb "red", '' using 1:12 with linespoints lt rgb "goldenrod", '' using 1:13 with linespoints lt rgb "blue";

set title "Do you feel that the two teams were evenly matched, taking into account the player skill\ndistribution and any handicaps or benefits provided to a team by the level layout?"
set output "../balance-value-procedural-graph-q3.svg"
plot '../data/Full-Procedural-Export.csv' using 1:4:xticlabel(3) with linespoints lt rgb "purple", '' using 1:14 with linespoints, '' using 1:15 with linespoints, '' using 1:16 with linespoints;