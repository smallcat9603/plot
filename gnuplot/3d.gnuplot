set view 45, 60
# set hidden3d
set yrange [2:12]
#set key top right #font ",10"
set xtics ("uniform" 1, "reversal" 2, "matrix" 3, "neighbor" 4, "shuffle" 5, "butterfly" 6, "complement" 7, "tornado" 8) #font ",10"
#set xlabel "Communication Pattern" #font ",5"
#set ylabel "Number of Nodes (2^n)"
#set zlabel "Maximum # of Slots (MS)" #font ",5"
set label 1 "label 1" at screen 0.05,0.3 rotate by -43 #font ",10"
set label 2 "label 2" at screen 0.05,0.8 #font ",10"
set label 3 "label 3" at screen 0.6,0.1 rotate by 13 #font ",10" 

#set term post eps color "GothicBBB-Medium-RKSJ-H, 20"  
set term post eps color ", 20"  
set output '3d.eps'  
splot  '3d-1.txt' title "3d-1" with linespoints linetype 1 pointtype 7, '3d-2.txt' title "3d-2" with linespoints linetype 2 pointtype 5

set terminal png         
set output '3d.png' 
replot
