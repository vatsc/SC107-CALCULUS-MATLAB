clear
x1=linspace(0.108882,21.2,20);
x2=linspace(0.5,8.5,20);
phase_portrait(@dynamics,x1,x2)


T=0.01;

time=[0:T:20];
initialState=[2;0.5];

[ts,ys] = ode45(@dynamics,time,initialState);
hold on;
plot(ys(:,1),ys(:,2),'b','LineWidth',3)
plot(ys(1,1),ys(1,2),'bo') % starting point
plot(ys(end,1 ...
    ),ys(end,2),'ks')