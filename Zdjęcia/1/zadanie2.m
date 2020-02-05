clear all

%Inicjalizacja wektora A
Ax = 7
Ay = 5

%Inicjalizacja wektora B
Bx = 3
By = -5

%Inicjalizacja wektora C
Cx = 6 * cos(120 * pi / 180)
Cy = 6 * sin(120 * pi / 180)

%Jeden wykres - trzy wektory
subplot(2, 2, 1)
quiver(0, 0, Ax, Ay)
hold on
quiver(0, 0, Bx, By)
quiver(0, 0, Cx, Cy)
title('Trzy wektory (A, B, C)')

%Wektor A+B
subplot(2, 2, 2)
quiver(0, 0, Ax, Ay)
hold on 
quiver(0, 0, Bx, By)
quiver(0, 0, Ax+Bx, Ay+By)
title('A+B')

%Wektor B-C
subplot(2, 2, 3)
quiver(0, 0, Bx, By)
hold on
quiver(0, 0, Cx, Cy);
quiver(0, 0, Bx-Cx, By-Cy);
title('B-C')

%Wektor A+B+C
subplot(2, 2, 4)
quiver(0, 0, Ax, Ay)
hold on
quiver(0, 0, Bx, By)
quiver(0, 0, Cx, Cy)
quiver(0, 0, Ax+Bx+Cx, Ay+By+Cy)
title('A+B+C')

