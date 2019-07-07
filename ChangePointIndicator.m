function CPEstimation = ChangePointIndicator(t0,t,x, delta, sigma)

CPEstimation = t0;
for s = t0:t-1;
    if (abs(mean(x(t0:s))-mean(x(s+1:t))) >= ...
        GLRConfidenceLevel(t0,s,t,delta, sigma)...
        );
        CPEstimation = t+1;
        break;
    end
end