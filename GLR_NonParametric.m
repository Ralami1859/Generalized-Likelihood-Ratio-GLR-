function CPEstimations = GLR_NonParametric(environment,sigma,delta)
addpath('Modules/'); 
T = length(environment);
CPEstimations = [];
Restart = 1;
x = [];
for t= 1:T;
    x = [x environment(t)];  
    Restart = ChangePointIndicator(Restart,x, delta, sigma);
    CPEstimations = [CPEstimations Restart];
end

