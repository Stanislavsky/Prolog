man(stas).
man(voeneg).
man(ratibor).
man(boguslav).
man(velerad).
man(duhovlad).
man(svyatoslav).
man(dobrozhir).
man(bogomil).
man(zlatomir).

woman(goluba).
woman(lubomila).
woman(bratislava).
woman(veslava).
woman(zhdana).
woman(bozhedara).
woman(broneslava).
woman(veselina).
woman(zdislava).

parent(stas,duhovlad).
parent(voeneg,ratibor).
parent(voeneg,bratislava).
parent(voeneg,velerad).
parent(voeneg,zhdana).

parent(goluba,ratibor).
parent(goluba,bratislava).
parent(goluba,velerad).
parent(goluba,zhdana).

parent(ratibor,svyatoslav).
parent(ratibor,dobrozhir).
parent(lubomila,svyatoslav).
parent(lubomila,dobrozhir).

parent(boguslav,bogomil).
parent(boguslav,bozhedara).
parent(bratislava,bogomil).
parent(bratislava,bozhedara).

parent(velerad,broneslava).
parent(velerad,veselina).
parent(veslava,broneslava).
parent(veslava,veselina).

parent(duhovlad,zdislava).
parent(duhovlad,zlatomir).
parent(zhdana,zdislava).
parent(zhdana,zlatomir).

% Задание_1

% men(+X) - предикат, выводящий имена всех мужчин
men(X) :- man(X), write(X), nl, fail.

% women(+X) - предикат, выводящий имена всех женщин
women(X) :- woman(X), write(X), nl, fail.

% children(+X) - предикат, выводящий всех детей X
children(X) :- parent(_, X), write(X), nl, fail.

% mother(+X, +Y) - предикат, проверяющий, является ли X матерью Y
mother(X,Y) :- parent(X,Y), woman(X).

% mother(+X) - предикат, выводящий маму X
mother(X) :- parent(X, _), woman(X), write(X).

% brother(+X, +Y) - предикат, который проверяет, является ли X братом Y.
brother(X, Y) :- man(X), parent(Z,X), parent(Z,Y), X \= Y.

% brother(+X) - предикат, который выводит всех братьев X.
brothers(X) :- setof(g, brother(Y,X), _), write(Y), nl,  fail.

% b_s(+X, +Y) - предикат, который проверяет, являются ли X и Y родными братом и сестрой или братьями или сестрами.
b_s(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

% b_s(+X) - предикат, который выводит всех братьев или сестер X.
b_s(X) :- setof(g, b_s(Y, X), _), write(Y), nl, fail.
    


% Задание_2

% son(+X, +Y) - предикат, который проверяет, является ли X сыном Y.
son(X, Y) :- man(X), parent(Y, X).

%son(+X) - предикат, выводит сына X.
son(X):- parent(X, Y), man(Y), write(Y). 

%husband(+X, +Y) - предикат, который проверяет, является ли X мужем Y.
husband(X,Y):- man(X), woman(Y), parent(X,Z), parent(Y,Z).

%husband(+X)- предикат, который выводит мужа X.
husband(X):- husband(Y,X), nl, write(Y).




%Задание_3

%grand_pa(+X, +Y) - предикат, который проверяет, является ли X дедушкой Y.
grand_pa(X, Y) :- parent(Z, Y), parent(X,Z), man(X).

%grand_pas(+X) - предикат, который выводит всех дедушек X.
grand_pas(X):- grand_pa(Y, X), write(Y), nl, fail.

%grand_pa_and_da(+X,+Y) - предикат, который проверяет, являются ли X и Y дедушкой и внучкой или внучкой и дедушкой.
grand_pa_and_da(X,Y):- (grand_pa(X, Y); grand_pa(Y, X)), (woman(X); woman(Y)).    

%aunt(+X,+Y) - предикат, который проверяет, является ли X тетей Y.
aunt(X,Y):- parent(Z, Y), parent(Q, Z), parent(Q, X), woman(X), Z\=X.

%aunts(+X) - предикат, который выводит всех тетей X.
aunts(X):- setof(t,aunt(Y,X),_), write(Y), nl, fail.






