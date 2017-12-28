%this is the code to find the best alpha
theta=[0.5;0.5];
alpha=0.0013;%the best
m=length(Y);
iteration=25;
theta_grad=0;
J=0;
figure(1);
hold on;
for i=1:iteration
    theta_grad=theta_grad-1/m *X' * (X*theta-Y);
    J=1/(2*m) * sum((X*theta-Y).^2);
    theta=theta-alpha/m * X'*(X*theta-Y);
    if(i>=1)
        scatter(i,J,'r');%we can decide which is best by J through its figure
    end
end
hold off;