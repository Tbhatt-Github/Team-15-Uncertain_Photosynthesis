close all ;
clear all ;
clc ;
%% Q 1.3.1 


n = 1000;
r_uniform = rand(1,20000000) ;  % generates uniformly distributed random numbers in (0,1)

subplot(2,1,1) ;
histogram( r_uniform , n, 'Normalization','pdf')  ; 


n = 1000;
r_normal = randn(1,2000000) ; 
% returns an N-by-N matrix containing pseudorandom values drawn from the standard normal distribution.

subplot(2,1,2) ;
histogram( r_normal , n, 'Normalization','pdf')  ; 



%% Q 1.3.2

% using the relation Var(x) = E(x^2) - (E(x))^2

 mean_uniform = sum( r_uniform) / size(r_uniform , 2 )  ;
 var_uniform = sum(r_uniform.*r_uniform)/ size(r_uniform , 2 ) - mean_uniform.*mean_uniform ; 
 
 mean_normal = sum( r_normal) / size(r_normal , 2 )  ;
 var_normal = sum(r_normal.*r_normal)/ size(r_normal , 2 ) - mean_normal.*mean_normal ; 

 
 %% Q 1.3.3
 
 
 
n = 500 ; 
ar = generalized_normal(2 , 3 , 1 , 2000000) ;
% generalized_normal( mean , standard_deviation , rows , columns   )

figure 
histogram( ar , n, 'Normalization','pdf')  ;
mean_ar = sum( ar ) / size(ar , 2 )  ;
 var_ar = sum(ar.*ar)/ size(ar , 2 ) - mean_ar.*mean_ar ; 
 

 
 %% Q 1.4 
 
 da = 2 ; % used for the parameter λ lambda .
 n = 500 ;

 X = -(log(1-r_uniform))/da  ; 
 
 
 figure
 subplot(2,1,1) ; 
 histogram( X , n , 'Normalization' , 'pdf' ) ;
 subplot(2,1 , 2 ) ; 
 histogram( X , n , 'Normalization' , 'cdf' ) ; 
 
 % the histograms plotted for PDF and CDF of X resembled the plot of the
 % functions λ.e^(-λ.x) and 1 - e^(-λ.x) , so X has exponential CDF and PDF
 % hence verified 
 
 
 
 %% functions
 
  function A = generalized_normal( mean , standard_deviation , rows ,columns ) 
 
    A = mean + standard_deviation .* randn(rows, columns ) ; 
    
    % scaling for variance 
    % shifting for mean 
    
%     scaling affects both mean and variance but shifting affects only
%     mean , so first we adjust variance by scaling and in that mean also
%     gets changed , and  to adjust mean ,  we shift it . 
 
 end
 
 
 
 
 











