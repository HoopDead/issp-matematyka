clear

v = 10
vprim = zeros(1,6)+10

t = [0:2:11]
tprim = [0:1:10]

x = v*t
xprim = tprim*v

u = zeros(1,11)
z = zeros(1,11)+10



subplot(1, 2, 1)
plot(t, x)
ylabel('x [m]')
xlabel('t [s]')
hold on
quiver(tprim, xprim, u, z, 0.33)
legend('x(t)', 'Vx(t)')

subplot(1, 2, 2)
plot(t,vprim)
xlabel('t [s]')
ylabel('Vx [m/s]')

