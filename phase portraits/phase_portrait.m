function phase_portrait(f,x1,x2)
[x,y] = meshgrid(x1,x2);
u = zeros(size(x));
v = zeros(size(x));

t = 0;

[d1,d2]=size(x);

for i = 1:d1
    for j = 1:d2
        Yprime = f(t,[x(i,j); y(i,j)]);
        u(i,j) = Yprime(1);
        v(i,j) = Yprime(2);
    end
end

figure(1)
hold on

quiver(x,y,u,v,'r');
xlabel('x_{1}')
ylabel('x_{2}')
axis tight equal;
box
end


