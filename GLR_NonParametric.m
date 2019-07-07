function CPEstimations = GLR_NonParametric(environment,sigma,delta)

T = length(environment);
CPEstimations = [];
Restart = 1;
for t= 1:T;
    x =  environment;
    Restart = ChangePointIndicator(Restart,t,x, delta, sigma);
    CPEstimations = [CPEstimations Restart];
end

