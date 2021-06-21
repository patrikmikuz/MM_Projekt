
X = linspace(0,pi/3);
R = 0.5*sqrt(3)/3;

y1 = @(x) R*cos(pi/3-x);
y2 = @(x) 1-R*cos(x);

hold on; 
plot(X, y1(X));
plot(X, y2(X));
axis([0 pi/3 0 1]);
xticks([0 pi/12 pi/6 pi/4 pi/3])
xticklabels({'0', '\pi/12', '\pi/6', '\pi/4', '\pi/3'})
xlabel('\vartheta'); ylabel('y', 'Rotation', 0);
hold off;