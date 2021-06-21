
X = linspace(0,1);
Y = ones(size(X));

a = 0.5;

v1 = 1-a*sqrt(3)/6;
v2 = 1-a*sqrt(3)/3;

SredisceStranica = [0.5; v1];
SredisceOgljisce = [0.5; v2];

hold on; 
plot(X, Y, 'r', 'LineWidth', 1); 
plot([0.5 0.5], [SredisceOgljisce(2) 1], 'b', 'LineWidth', 1);
risi_trikotnik(a, SredisceOgljisce, pi+pi/3); 
text(0.55, (SredisceOgljisce(2) +1)/2, 'y, \vartheta = \pi/3')
hold off;