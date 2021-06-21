function verjetnost = simulacija_meta_trikotnika(N, D, L, risi)

% Simulacija meta trikotnika, funkcija vrne verjetnost, da bo trikotnik s
% stranico 
% L sekal vsaj eno vzporednico, ki so narazen za D. N je število metov, D razdalja med
% vzporednicami, L pa stranica kovanca. risi pove ali risemo ali ne.
% Prikaz je poenostavljen na vzporednice z razdaljo 10cm. Dolzina stranice je
% ustrezno pomanjsana.

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
    kot = rand*pi;
    X = zeros(1,3); Y = zeros(1,3);
    X(1) = x; Y(1) = y+l/sqrt(3);
    [Bx, By] = rotacija(X(1), Y(1), x, y, 2*pi/3);
    [Cx, Cy] = rotacija(X(1), Y(1), x, y, -2*pi/3);
    X(2) = Bx; Y(2) = By; X(3) = Cx; Y(3) = Cy;
    [Xrot, Yrot] = rotacija(X, Y, x, y, kot);
    y1 = min(Yrot); y2 = max(Yrot);
    seka = seka_vzporednico(vzporednice, y1, y2);
    if risi
        if seka
            plot([Xrot Xrot(1)],[Yrot Yrot(1)],'r');
        else
            plot([Xrot Xrot(1)],[Yrot Yrot(1)],'b');
        end 
    end
end

if risi
    hold off
end

verjetnost = K/N;

end