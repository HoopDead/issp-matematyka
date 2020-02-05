clear all

alfa = linspace(0 , 2*pi, 100);


%Definiowanie promieni
r1 = 1;
r2 = 2;
r3 = 5;


%Pierwszy okrag r = 1
x1 = r1*cos(alfa);
y1 = r1*sin(alfa);

%Drugi okrag r = 2
x2 = r2*cos(alfa);
y2 = r2*sin(alfa);

%Trzeci okrag r = 5
x3 = r3*cos(alfa)
y3 = r3*sin(alfa)


%Rysowanie okregow
plot(x1,y1)
hold on
plot(x2, y2)
plot(x3, y3)
legend('R = 1', 'R = 2' , 'R = 5');
axis equal;
