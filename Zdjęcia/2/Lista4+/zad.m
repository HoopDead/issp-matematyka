
clear all

%s(t) = y0 - v0y*t * 1/2 * a * t
%x(t) = v*t+x0

zero = zeros(1, 10)

v0 = 10
alfa = 30 * pi/180
a = 9.81

v0x = v0 * cos(alfa)
v0y = v0 * sin(alfa)

x0 = 0
y0 = 0



for i = 1:10
    tc = 2 * v0 * sin(alfa) / a
    t = linspace(0,tc,10)
    fprintf('value of tc: %d\n', tc);
end


x = v0x .* t + x0
y = v0y .* t - a/2 .* t.^2
vy = v0 .* sin(alfa) - a.*t
vx = zeros(1, 10) + v0x

plot(x, y)