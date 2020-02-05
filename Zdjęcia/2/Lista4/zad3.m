clear all

zero = zeros(1, 100)

v0 = 10
alfa = 30 * pi/180
a = 9.81

v0x = v0 * cos(alfa)
v0y = v0 * sin(alfa)

x0 = 0
y0 = 0

tc = (2 * v0 * sin(alfa)) / a
t = linspace(0,tc,100)
t2 = linspace(0,tc,99)  


x = v0x .* t + x0
y = v0y .* t - a/2 .* t.^2
vy = v0 .* sin(alfa) - a.*t
vx = zeros(1, 100) + v0x

dx = diff(x)
dy = diff(y)
dt = diff(t)

v1 = sqrt((dx./dt).^2 + (dy./dt).^2)
v2 = sqrt(vx.^2 + vy.^2)

plot(t2, v1)
hold on
plot(t, v2)
xlabel('t [s]')
ylabel('v [m/s]')
legend('v = ?(dx/dt)^2 + (dy/dt)^2', 'v = vx^2 + vy^2')