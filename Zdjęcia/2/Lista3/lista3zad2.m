Vy0 = 10
g = 9.81
t = [0:0.25:3]
h = Vy0 .* t - g/2 * t.^2
u = zeros(1, 13)
z = [20, 18, 16, 14, 12, -12, -14, -16, -18, -20, -22, -24, -26]
v = zeros(1, 13)+z

subplot(1, 2, 1)
plot(t, h)
hold on 
quiver(t, h, u, v, 0.33)
legend('x(t)', 'Vy(t)')
xlabel('t [s]')
ylabel('y [m]')

subplot(1, 2, 2)
vprim = Vy0 - g.*t
plot(vprim, t)
xlabel('t [s]')
ylabel('Vy [m/s')
