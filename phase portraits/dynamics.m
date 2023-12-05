function dx = dynamics(t,x)
%dx=[x(2); -sin(x(1));];
%dx=[-2*x(1);-3*x(2)];
dx=[1.1*x(1)-0.4*x(1)*x(2);0.1*x(1)*x(2)-0.4*x(2)];
end