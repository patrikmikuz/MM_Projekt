function verjetnost = verjetnost_kovanec(N, d, l, risi)

% Funkcija verjetnost_kovanec izracuna verjetnost, da kovanec radija l seka
% vsaj eno vzporednico, pri cemer so vzporednice narazen za d. N je stevilo
% metov, risi pa pove ali risemo ali ne

% Ker so vsi vzporednice enako verjetne se omejimo le na eno. Za
% enostavnost prikaza se omejimo na kvadrat 1 x 1. Razdalja med
% vzporednicami in dolzina igle se ohranita v enakem razmerju.

% D ... d 
% L ... l
% x = l/d

K = 0;
if risi
    hold on
    axis([0 1 0 1])
end     
for i = 1:N
    seka = met_kovanca(l/d, risi);
    if seka
        K=K+1;
    end
end
if risi
    hold off
end
verjetnost = K/N;
end