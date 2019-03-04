function res = glr_arm(t_s,t,X,N,delta,sigma)
    res = 0;
    for s = t_s:t-1;
        if (sum(N(t_s:s))>=1)*(sum(N(s+1:t))>=1)==1
             if (abs(sum(X(t_s:s))./sum(N(t_s:s))...
                 -sum(X(s+1:t))./sum(N(s+1:t))) >= ...
                GLRConfidence(t_s,s,t,delta, sigma,N))
                res = 1;
                break;
             end
        end
    end