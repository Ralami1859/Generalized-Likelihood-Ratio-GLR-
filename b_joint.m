function res = b_joint(t0,s,t,delta, sigma)
    
    a = 1./(s-t0+1)+1./(t-s);
    b = 1+1./(t-t0+1);
    c = 2.*(t-t0).*sqrt(t-t0+2)./delta;
    res = sigma.*sqrt(2.*a.*b.*log(c));
end    