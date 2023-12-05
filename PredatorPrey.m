close all
clear all
clc

alpha = input('Enter the value of alpha: ');
beta = input('Enter the value of beta: ');
delta = input('Enter the value of delta: ');
gamma = input('Enter the value of gamma: ');

params = [alpha; beta; delta; gamma];

y0 = input('Enter the number of Prey and Predators: ');

tspan = input('Enter the Time span: ');

[t, y] = ode45(@(t, y)DE(t, y, params), tspan, y0);


subplot(2,1,1);
plot(t,y(:,1));
xlabel('Time')
ylabel('Prey');

subplot(2,1,2);
plot(t,y(:,2));
xlabel('Time')
ylabel('Predators');

function dy = DE(t,y,params)

alpha = params(1);
beta = params(2);
delta = params(3);
gamma = params(4);

X = y(1);
Y = y(2);

dy = zeros(2,1);
dy(1) = alpha * X - beta * X * Y;
dy(2) = delta * X * Y - gamma * Y;
end