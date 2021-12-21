set yrange [20:100]
#set xrange [0:10000]
set xlabel "xlabel"
set ylabel "ylabel" font ",15"
set key bottom left
#unset key
#set title "title"

set term post eps color "GothicBBB-Medium-RKSJ-H, 20"      
set output 'curve.eps' 
plot  'curve.txt' using ($2*100):xtic(1) title "1 FSO/Rack" with linespoints pointtype 2 linewidth 2 pointsize 3, '' using ($3*100) title "2 FSOs/Rack" with linespoints pointtype 4 linewidth 2 pointsize 3, '' using ($4*100) title "3 FSOs/Rack" with linespoints pointtype 8 linewidth 2 pointsize 3, '' using ($5*100) title "4 FSOs/Rack" with linespoints pointtype 7 linewidth 2 pointsize 3

set terminal png
set output 'curve.png'  
replot
