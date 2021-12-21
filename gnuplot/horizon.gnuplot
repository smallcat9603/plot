set yrange [0.2:1.2]
set xlabel "xlabel"
set ylabel "ylabel"
set key top left
#unset key
#set title "Overall System Utilization"
set label 1 "baseline" at screen 0.35,0.8 

#set term post eps color "GothicBBB-Medium-RKSJ-H, 20"  
set term post eps color ", 20"    
set output 'horizon.eps' 
plot  'horizon.txt' using ($2)/1024:xtic(1) title "switch" with linespoints linetype 2 pointtype 5 linewidth 2 pointsize 2, '' using ($3)/1984 title "link" with linespoints linetype 3 pointtype 9 linewidth 2 pointsize 2, 1 notitle with lines linetype 1 linewidth 3

set terminal png         
set output 'horizon.png' 
replot
