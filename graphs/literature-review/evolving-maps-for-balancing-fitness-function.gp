set xrange [0:1]
set yrange [0:1]
set xtic auto
set ytic auto
set key off
set title "Fitness values for Lanzi, Loiacono and Stucchi's fitness function"
set xlabel "Player 1's Score Ratio"
set ylabel "Fitness"
set terminal svg size 800, 400 dynamic
set output "evolving-interesting-maps-fitness-graph.svg"
logb(x, base) = log(x)/log(base)
fitness(score1, score2) = (score1 / (score1 + score2)) * logb((score1 / (score1 + score2)), 2)
totalFitness(score1) = -1 * (fitness(score1, 1 - score1) + fitness(1 - score1, score1))
plot totalFitness(x)
