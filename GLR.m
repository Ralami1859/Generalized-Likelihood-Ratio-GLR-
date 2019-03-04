function res = GLR(t_s,t,X,N,delta,sigma)
    res = t_s;
    for a = 1:size(N,2);
        if glr_arm(t_s,t,X(:,a),N(:,a),delta,sigma);
            res = t+1;
            break;
        end
    end
end