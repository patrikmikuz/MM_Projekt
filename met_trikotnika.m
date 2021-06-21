function seka = met_trikotnika(a, risi)

% Funkcija met_trikotnika, vrze trikotnik s stranico a na list papirja.
% risi pove ali risemo ali ne. Razdalja med
% vzporednicami je predpostavljeno 1.
% Funkcija vrne vrednost 1 če seka kako vzporednico, 0 sicer

x = rand; y = rand;
kot = rand*pi;
S = [x;y];
A = [S(1);S(2)+a/sqrt(3)];
B = rotacija(A, S, 2*pi/3);
C = rotacija(A, S, -2*pi/3);
Tocke = [A B C];
R = rotacija(Tocke, S, kot);
X = R(1,:); Y = R(2,:);
y1 = min(Y); y2 = max(Y);
if risi
    if min([y1 y2]) < 0 || max([y1 y2]) > 1
        plot([X X(1)],[Y Y(1)],'r');
        seka = 1;
    else
        plot([X X(1)],[Y Y(1)],'b');
        seka = 0;
    end
    axis([0 1 0 1]);
else
    if min([y1 y2]) < 0 || max([y1 y2]) > 1
        seka = 1;
    else
        seka = 0;
    end
end
end