clear
a1 = 2 * cos(45 * pi / 180);
b1 = 2 * sin(45 * pi/ 180);
a2 = 4 * cos(127 * pi / 180);
b2 = 4 * sin(127 * pi / 180);


subplot(1, 2, 1)
quiver(0, 0, a1, b1, 1)
hold on
quiver(a1, b1, a2, b2, 1)
c1 = a1 + a2;
c2 = b1 + b2;
quiver(0, 0, c1, c2, 1);
text(-0.9, 1.5, 'suma');
text(1, 3, 'd2');
text(1, 0.5, 'd1');
subplot(1, 2, 2)
quiver(0, 0, a1, 0, 1);
hold on
quiver(0, 0, 0, b1, 1);
quiver(0, 0, a2, 0, 1);
quiver(0, 0, 0, b2, 1);
quiver(0, 0, c1, 0, 1);
quiver(0, 0, 0, c2, 1);
quiver(0, 0, c1, c2, 1);
xlabel('x[m]');
ylabel('y[m]');
