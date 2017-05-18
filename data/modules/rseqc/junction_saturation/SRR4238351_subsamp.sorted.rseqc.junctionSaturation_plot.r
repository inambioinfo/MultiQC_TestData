pdf('SRR4238351_subsamp.sorted.rseqc.junctionSaturation_plot.pdf')
x=c(5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100)
y=c(9,15,21,22,23,24,26,28,29,29,31,34,35,38,38,38,38,38,42,42)
z=c(9,15,22,23,24,26,28,31,33,33,36,40,41,44,44,44,44,45,49,49)
w=c(0,0,1,1,1,2,2,3,4,4,5,6,6,6,6,6,6,7,7,7)
m=max(0,0,0)
n=min(0,0,0)
plot(x,z/1000,xlab='percent of total reads',ylab='Number of splicing junctions (x1000)',type='o',col='blue',ylim=c(n,m))
points(x,y/1000,type='o',col='red')
points(x,w/1000,type='o',col='green')
legend(5,0, legend=c("All junctions","known junctions", "novel junctions"),col=c("blue","red","green"),lwd=1,pch=1)
dev.off()
