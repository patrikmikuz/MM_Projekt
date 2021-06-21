function seka = met_kovanca(l, risi)

% Funkcija met_kovanca, vrze kovanec radija l na list papirja.
% risi pove ali risemo ali ne. Razdalja med
% vzporednicami je predpostavljeno 1.
% Funkcija vrne vrednost 1 če seka kako vzporednico, 0 sicer.

x = rand; y = rand;
th = linspace(0,2*pi);
xunit = l*cos(th)+x;
yunit = l*sin(th)+y;
y1 = min(yunit); y2 = max(yunit);
if risi
    if min([y1 y2]) < 0 || max([y1 y2]) > 1
        plot(xunit, yunit,'r');
        seka = 1;
    else
        plot(xunit, yunit,'b');
        seka = 0;
    end 
else
    if min([y1 y2]) < 0 || max([y1 y2]) > 1
        seka = 1;
    else
        seka = 0;
    end
end
end