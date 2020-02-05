clear all

%Predkosc
v0 = 5;

%Przyciaganie ziemskie
g = 9.81;

%Czas lotu do momentu upadku na poziom poczatkowy
ts = 2*v0/g

%Linspace z czasem w konkretnym momencie
t = linspace(0, ts, 100);

subplot(2, 1, 1)
%Wykres 1 - Wysokosc i czas
h = v0 .* t - g*t.^2/2;

%Definiowanie wektora predkosci
tpomocnicze = linspace(0, ts, 8);
hpomocnicze = v0 .* tpomocnicze - g*tpomocnicze.^2/2;
v = v0 - g .* tpomocnicze;
zero = zeros(1, 8);

%Rysowanie wykresu
plot(t, h)
hold on
xlabel('Czas t [s]')
ylabel('Wysokosc h [m]')
title('Wykres wysokosci od czasu')
quiver(tpomocnicze, hpomocnicze, zero, v);
legend('H(t)', 'Wektor predkosci')
axis('equal')

subplot(2, 1, 2)
%Wykres 2 - predkosc i czas
vfull = v0 - g.*t
plot(t, vfull)
hold on
gpomocnicze = zeros(1, 8) - g
xlabel('Czas t[s]')
ylabel('Predkosc v[m/s]')
quiver(tpomocnicze, v, zero, gpomocnicze/20, 0)
legend('V(t)', 'Wektor przyspieszenia')
title('Wykres predkosci od czasu')