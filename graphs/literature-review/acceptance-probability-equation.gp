set xrange [1:0]
set yrange [0:2]
set xtic auto
set ytic auto
set key default title 'Cost Deltas'
set title "Acceptance Probability Values for Varying Deltas"
set xlabel "Temperature"
set ylabel "Acceptance Probability"
set terminal svg size 800, 400 dynamic
set output "acceptance-probability-equation.svg"
acceptanceProbability(delta, temperature) = exp(-(delta / temperature))
plot acceptanceProbability(-0.1, x) title '-0.1',\
acceptanceProbability(0, x) title '0',\
acceptanceProbability(0.1, x) title '0.1',\
acceptanceProbability(0.2, x) title '0.2',\
acceptanceProbability(0.3, x) title '0.3',\
acceptanceProbability(0.4, x) title '0.4'
