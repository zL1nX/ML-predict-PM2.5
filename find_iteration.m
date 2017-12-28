%this is the code to find the best iteration
theta=[0.5;0.5];
alpha=0.0013;%fixed
m=length(Y);
iteration=487;%the best
theta_grad=0;
J=0;
Jmin=10000;
for i=1:iteration
    theta_grad=theta_grad-1/m *X' * (X*theta-Y);
    J=1/(2*m) * sum((X*theta-Y).^2);
    theta=theta-alpha/m * X'*(X*theta-Y);
    if(Jmin>J)%find the best iteration which means we need to find the Jmin
        Jmin=J;
    else
        if(Jmin == J)
            disp('J is min');
            break;
        end
    end
end