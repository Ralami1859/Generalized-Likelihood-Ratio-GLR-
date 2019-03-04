theta1 = 0.9; theta2 = 0.4;
T = 200;
N = ones(1,T);
x = [rand(1,T/2) < theta1 rand(1,T/2) < theta2];
delta = 0.1;
I = [];
t0 = 2;
sigma = 0.5;
for t= t0:T;
    L = [];
    for s = t0:t-1;
        L = [L (abs(mean(x(t0:s))-mean(x(s+1:t))) >= ...
            GLRConfidenceLevel(t0,s,t,delta, sigma,N)...
            )];
    end
    I = [I (sum(L)>=1)];
end

figure; plot(I,'r.')

