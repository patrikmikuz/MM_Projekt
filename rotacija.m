function R = rotacija(A, S, theta)

% Funkcija rotacija nam zarotira tocke A okrog tocke S za kot theta.

Xc = S(1); Yc = S(2);
X = A(1,:); Y = A(2,:);
Xrot = (X-Xc)*cos(theta)+(Y-Yc)*sin(theta)+Xc;
Yrot = -(X-Xc)*sin(theta)+(Y-Yc)*cos(theta)+Yc;

R = [Xrot; Yrot];


end