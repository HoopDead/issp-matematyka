clear all

%Inifjalizacja danych
v0 = 3.5;
alfa = 45 * pi / 180;
g = 9.81;

%Obliczenie wektorow v0x i v0y
v0x = v0 * cos(alfa);
v0y = v0 * sin(alfa);

%Czas spadania
ts = 2*v0y / g
t = linspace(0, ts, 100)
tpomocnicze = linspace(0, ts, 8)

%Droga w y i x

x = v0x .* t
y = v0y .* t - g*t.^2/2


%Definiowanie wektoru
xwektor = v0x .* tpomocnicze
ywektor = v0y .* tpomocnicze - g*tpomocnicze.^2/2
vx = zeros(1, 8) + v0x
vy = v0y - g.*tpomocnicze
zera = zeros(1, 8)

%Punkty hmax i miejsce uderzenia z ziemia
hmax = v0y^2 / 19.62

plot(x, y)
title('Trajektoria lotu')
xlabel('Droga x [m]')
ylabel('Droga (wysokosc) y [m]')
hold on
quiver(xwektor, ywektor, vx/20, zera, 0)
quiver(xwektor, ywektor, zera, vy/20, 0)
quiver(xwektor, ywektor, vx/20, vy/20, 0)
legend('x(t)', 'Vx(t)', 'Vy(t)', 'Vc(t)')
text(x(50), hmax, 'Hmax ' + string(hmax))
text(x(100), y(100), 'Miejsce zderzenia')
axis equal