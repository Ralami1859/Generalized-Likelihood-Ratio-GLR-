addpath('Modules/'); 
%--------------------------------------------------------
%%                     Define the environment
%------------------------------------------------------
theta1 = 0.9; theta2 = 0.4;
T = 400;
environment = [rand(1,T/2) < theta1 rand(1,T/2) < theta2];
delta = 0.1;
sigma = 0.5; % For Bernoulli distribution

%--------------------------------------------------------
%%                   Launch the GLR non-parametric
%--------------------------------------------------------
CPEstimations = GLR_NonParametric(environment,sigma,delta);


%----------------------------------------------------------
%%                Plotting the results
%----------------------------------------------------------
figure; plot(CPEstimations,'r.')
xlabel('Time step')
ylabel('Change-point Estimations')
