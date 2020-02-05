clear all

zero = zeros(1, 10)

v0 = 10
alfa = 30 * pi/180
a = 9.81

v0x = v0 * cos(alfa)
v0y = v0 * sin(alfa)

x0 = 0
y0 = 0

tc = 2 * v0 * sin(alfa) / a
t = linspace(0,tc,7)


x = v0x .* t + x0
y = v0y .* t - a/2 .* t.^2
vy = v0 .* sin(alfa) - a.*t
vx = zeros(1, 7) + v0x

vt = sqrt(vx.^2 + vy.^2) 

plot(x, y)
hold on
quiver(x, y, vt/10, vy/10, 0)
text(x, y - 0.2, string(vt) + " m/s")
xlabel('x [m]')
ylabel('y [m]')
legend('x(t)', 'v(t)')
axis equal