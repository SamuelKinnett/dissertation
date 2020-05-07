set xrange [-1:1]
set yrange [-1:1]
set cbrange[0:1]
set xtic auto
set ytic auto
set view map
set dgrid3d
set xlabel "ΔS"
set ylabel "ΔC"
set cblabel "Fitness Value"
set terminal png size 800, 400
# fix for cblabel not appearing on the output graph.
# https://stackoverflow.com/a/40827863
set lmargin at screen 0.1
set rmargin at screen 0.85 
set output "fitness-function.png"
set pm3d interpolate 20, 20
fitnessFunction(deltaS, deltaC) = 1 - (abs(deltaS + deltaC) / 2)
splot fitnessFunction(x, y) with pm3d
