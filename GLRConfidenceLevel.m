function res = GLRConfidenceLevel(t0,s,t,delta, sigma,N)
    a = 1./sum(N(t0:s))+1./sum(N(s+1:t));
    b = 1+1./sum(N(t0:t));
    c = 2.*(sum(N(t0:t-1))).*sqrt(sum(N(t0:t))+1)./delta;
    res = sigma.*sqrt(2.*a.*b.*log(c));
end 