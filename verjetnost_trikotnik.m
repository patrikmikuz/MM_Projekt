function verjetnost = verjetnost_trikotnik(N, d, l, risi)

% Funkcija verjetnost_trikotnik izracuna verjetnost, da trikotnik s 
% stranico dolzine a seka
% vsaj eno vzporednico, pri cemer so vzporednice narazen za d. N je stevilo
% metov, risi pa pove ali risemo ali ne

% Ker so vsi vzporednice enako verjetne se omejimo le na eno. Za
% enostavnost prikaza se omejimo na kvadrat 1m x 1m. Razdalja med
% vzporednicami in dolzina igle se ohranita v enakem razmerju.

% d ... 1 
% l ... x
% x = l/d

K = 0;
if risi
    hold on
    axis([0 1 0 1])
end     
for i = 1:N
    seka = met_trikotnika(l/d, risi);
    if seka
        K=K+1;
    end
end
if risi
    hold off
end
verjetnost = K/N;
end