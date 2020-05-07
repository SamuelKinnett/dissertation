set datafile separator ','
set key autotitle columnhead
set xlabel "Game Id"
set xtic 1
set terminal svg size 800, 400 dynamic

set output "../session-1-balance-value-graph.svg"
plot '../data/Session-1-Export.csv' using 1:4:xticlabel(3) with linespoints, '' using 1:5 with linespoints
set output "../session-1-balance-value-graph-kd.svg"
plot '../data/Session-1-Export.csv' using 1:4:xticlabel(3) with linespoints, '' using 1:6 with linespoints, '' using 1:7 with linespoints

set output "../session-2-balance-value-graph.svg"
plot '../data/Session-2-Export.csv' using 1:4:xticlabel(3) with linespoints, '' using 1:5 with linespoints
set output "session-2-balance-value-graph-kd.svg"
plot '../data/Session-2-Export.csv' using 1:4:xticlabel(3) with linespoints, '' using 1:6 with linespoints, '' using 1:7 with linespoints

set output "../session-3-balance-value-graph.svg"
plot '../data/Session-3-Export.csv' using 1:4:xticlabel(3) with linespoints, '' using 1:5 with linespoints
set output "../session-3-balance-value-graph-kd.svg"
plot '../data/Session-3-Export.csv' using 1:4:xticlabel(3) with linespoints, '' using 1:6 with linespoints, '' using 1:7 with linespoints

set output "../session-4-balance-value-graph.svg"
plot '../data/Session-4-Export.csv' using 1:4:xticlabel(3) with linespoints, '' using 1:5 with linespoints
set output "../session-4-balance-value-graph-kd.svg"
plot '../data/Session-4-Export.csv' using 1:4:xticlabel(3) with linespoints, '' using 1:6 with linespoints, '' using 1:7 with linespoints

set output "../session-5-balance-value-graph.svg"
plot '../data/Session-5-Export.csv' using 1:4:xticlabel(3) with linespoints, '' using 1:5 with linespoints
set output "../session-5-balance-value-graph-kd.svg"
plot '../data/Session-5-Export.csv' using 1:4:xticlabel(3) with linespoints, '' using 1:6 with linespoints, '' using 1:7 with linespoints

set output "../session-6-balance-value-graph.svg"
plot '../data/Session-6-Export.csv' using 1:4:xticlabel(3) with linespoints, '' using 1:5 with linespoints
set output "../session-6-balance-value-graph-kd.svg"
plot '../data/Session-6-Export.csv' using 1:4:xticlabel(3) with linespoints, '' using 1:6 with linespoints, '' using 1:7 with linespoints