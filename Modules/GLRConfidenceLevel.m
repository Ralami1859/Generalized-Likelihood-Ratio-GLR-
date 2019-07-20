function res = GLRConfidenceLevel(t0,s,t,delta, sigma)
    %a = 1./sum(N(t0:s))+1./sum(N(s+1:t));
    a = 1./(s-t0+1)+1./(t-s);
    %b = 1+1./sum(N(t0:t));
    b = 1+1./(t-t0+1);
    %c = 2.*(sum(N(t0:t-1))).*sqrt(sum(N(t0:t))+1)./delta;
    c = 2.*(t-t0).*sqrt(t-t0+1+1)./delta;
    res = sigma.*sqrt(2.*a.*b.*log(c));
end 