set yrange [0:4]
set key top left font ", 20"
# set key center tmargin horizontal box font "GothicBBB-Medium-RKSJ-H, 13"
# set key top outside horizontal center font "GothicBBB-Medium-RKSJ-H, 13"
#set grid
set style data histograms
# set style fill solid 1.00 border -1
set style fill pattern 1 border -1
#set title "title"
set xtics rotate by -20 font ", 20"
set xlabel "xlable" font ", 20"
set ylabel "\# of ylable" font ",20" 
 
# https://stackoverflow.com/questions/43368634/gnuplot-histogram-with-plot-line?rq=1 
# #set border 3
# #number of columns to be plotted
# N=8
# #vertical offset
# OFFSET=0
# #gapwidth (set to gnuplot's default)
# GW=2
# xbox(x,i)=x+(i-N*0.5)/(N+GW)
# set boxwidth 0.9
# set tics nomirror out scale 0.75
# set style fill solid 0.8

set terminal postscript eps color 20    
set output 'histograms.eps'  
plot  'histograms.txt' using ($2):xtic(1) title "dimension\\_order routing", '' using ($6) title "dynamic X-Y routing", '' using ($5) title "MiniCAR"#, '' using ($5) every 2 title "MiniCAR"
# ,'dot.txt' using (xbox($0,1)):($2+OFFSET) title "queuing time" with points pt 9 lc rgb "black", '' using (xbox($0,2)):($3+OFFSET) notitle with points pt 9 lc rgb "black", '' using (xbox($0,3)):($4+OFFSET) notitle with points pt 9 lc rgb "black", '' using (xbox($0,4)):($5+OFFSET) notitle with points pt 9 lc rgb "black", '' using (xbox($0,5)):($6+OFFSET) notitle with points pt 9 lc rgb "black", '' using (xbox($0,6)):($7+OFFSET) notitle with points pt 9 lc rgb "black", '' using (xbox($0,7)):($8+OFFSET) notitle with points pt 9 lc rgb "black", '' using (xbox($0,8)):($9+OFFSET) notitle with points pt 9 lc rgb "black"


set terminal png
set output 'histograms.png' 
replot
