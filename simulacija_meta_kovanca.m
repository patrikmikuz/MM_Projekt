function verjetnost = simulacija_meta_kovanca(N, D, L, risi)

% Simulacija meta kovanca, funkcija vrne verjetnost, da bo kovanec z radijem 
% L sekal vsaj eno vzporednico, ki so narazen za D. N je število metov, D razdalja med
% vzporednicami, L pa radij kovanca. risi pove ali risemo ali ne.
% Prikaz je poenostavljen na vzporednice z razdaljo 10cm. Polmer je
% ustrezno pomanjsan.

vzporednice = linspace(0,1,11);
d = vzporednice(2)-vzporednice(1);
l = (L*d)/D;
K = 0;

if risi
    hold on
    for i = 1:D
        yline(vzporednice(i))
    end
    axis([0 1 0 1])
end     

for i = 1:N
    x = rand; y = rand;
    th = linspace(0,2*pi);
    xunit = l*cos(th)+x;
    yunit = l*sin(th)+y;
    y1 = min(yunit); y2 = max(yunit);
    seka = seka_vzporednico(vzporednice, y1, y2);
    if seka
        K = K+1;
        if risi
            plot(xunit, yunit,'r');
        end
    else
        if risi
            plot(xunit, yunit,'b');
        end
    end
end

if risi
    hold off
end

verjetnost = K/N;

end