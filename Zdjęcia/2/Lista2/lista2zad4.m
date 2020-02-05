    clear
ax = 6
ay = 0

bx = 12 * cos(60 * pi / 180);
by = 12 * sin(60 * pi / 180);

cx = 9 * cos(-60 * pi / 180);
cy = 9 * sin(-60 * pi / 180);

subplot(2, 3, 1)
quiver(0, 0, ax, ay);
hold on
quiver(0, 0, bx, by);
quiver(0, 0, cx, cy);
title('Wektory A, B, C')
subplot(2, 3, 2)
ans1x = ax + bx;
ans1y = ay + by;
quiver(0, 0, ax, ay);
hold on
quiver(0, 0, bx, by);
quiver(0, 0, ans1x, ans1y);
title('A + B')
subplot(2, 3, 3)
ans2x = ax - bx;
ans2y = ay - by;
quiver(0, 0, ax, ay);
hold on
quiver(0, 0, -bx, -by);
quiver(0, 0, ans2x, ans2y);
title('A - B')
subplot(2, 3, 4)
ans3x = bx - ax;
ans3y = by - ay;
quiver(0, 0, -ax, -ay);
hold on
quiver(0, 0, bx, by);
quiver(0, 0, ans3x, ans3y);
title('B-A')
subplot(2, 3, 5)
ans4x = ax + bx + cx;
ans4y = ay + by + cy;
quiver(0, 0, ax, ay);
hold on
quiver(0, 0, bx, by);
quiver(0, 0, cx, cy);
quiver(0, 0, ans4x, ans4y);
title('A+B+C')
subplot(2, 3, 6)
quiver(0, 0, ax, ay);
hold on
quiver(0, 0, bx, by);
quiver(0, 0, -cx, -cy);
ans5x = ax + bx - cx;
ans5y = ay + by - cy;
quiver(0, 0, ans5x, ans5y)
title('A+B-C')