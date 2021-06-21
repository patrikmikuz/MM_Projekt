function x = seka_vzporednico(vzporednice, a, b)

% Funkcija seka_vzporednico preveri ce daljica (a, b) seka katero izmed 
% nastetih vzporednic 

A = vzporednice-a;
B = vzporednice-b;

if a < min(vzporednice) || b > max(vzporednice)
    x = 1;
else
    indeks1 = find(A == min(A(A>0)));
    indeks2 = find(B == min(B(B>0)));
    if indeks1 == indeks2
        x = 0;
    else
        x = 1;
    end
end
end