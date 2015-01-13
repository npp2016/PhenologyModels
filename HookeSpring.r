source("libs/plotPhen.r")

nt=1000; dt=0.01;
Fw=1; m=1; k=1

x=v=a=rep(0,nt)

for (t in 2:nt) {
    Fr=-k*x[t-1]
    F=Fw+Fr
    a[t]=F/m
    v[t]=v[t-1]+a[t]*dt
    x[t]=x[t-1]+v[t]*dt
}

plotPhen(1:nt,list(x,v,a),"Hookes")