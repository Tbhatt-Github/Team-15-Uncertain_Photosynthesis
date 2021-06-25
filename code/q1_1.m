close all ;
clear all ;
clc ;
n = 100;
r = rand([1,20000000]) ; 
% n = size(r,2)/100 ;


%  0  to 1    n  intervals , : each interval==>  1/n * r.size/n --> 1/n  (because  n such intervals) 
y = hist(r,n) * ( n/ size(r,2))   ;
subplot(2,2,1) ;
stem(1/(n+1) :1/(n+1):1-1/(n+1)  , y ) ; 
xlim([-1,2]) ;
ylim([0,1.5]) ;
subplot(2,2,2); 
plot (1/(n+1) :1/(n+1):1-1/(n+1)   , y ) ;
xlim([-1,2]) ;
ylim([0,1.5]) ;

n = 100;
r = randn([1,2000000]) ; 
% n = size(r,2)/100 ;


%  0  to 1    n  intervals , : each interval==>  1/n * r.size/n --> 1/n  (because  n such intervals) 
y = hist(r,n) * ( n/ size(r,2))   ;
subplot(2,2,3) ;
stem(1/(n+1) :1/(n+1):1-1/(n+1)  , y ) ; 
xlim([-1,2]) ;
ylim([0,4.5]) ;
subplot(2,2,4) ;
plot (1/(n+1) :1/(n+1):1-1/(n+1)   , y ) ;
xlim([-1,2]) ;
ylim([0,4.5]) ;

 
 











