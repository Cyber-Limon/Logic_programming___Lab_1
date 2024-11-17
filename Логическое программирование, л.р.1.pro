/*
domains
    x = symbol
    y, z = integer
predicates
    nondeterm p(x,y,z)    % Предикат принимает аргументы типа x (symbol), y (integer) и z (integer)
    nondeterm p1(x,y)     % Предикат принимает x и y
    nondeterm p2(x,z)     % Предикат принимает x и z
    nondeterm p3(x,y)     % Предикат принимает x и y
clauses
    p1(a,11).     % Факт p1 принимает 11 
    p1(a,1).      % Факт p1 принимает 1 
    p2(a,2).      % Факт p2 принимает 2 
    p3(a,3).      % Факт p3 принимает 3 
    p(X,Y,Z):-p1(X,Y),p2(X,Z),!. 
    p(X,Y,Z):-p2(X,Z),p3(X,Y),!. 
    % Приавило p(x,y,z) принимает 1 тогда и только тогда, когда выполняется одно из двух условий, и сразу завершает работу
goal
    p(a,Y,Z).    % Поиск Y и Z, которые удовлетворяют цели
*/



/*
domains 
    x = integer
predicates
    nondeterm r(x)     % Предикат принимает аргументы типа x (integer) 
    nondeterm r1(x)    % Предикат принимает аргументы типа x (integer) 
    nondeterm r2(x)    % Предикат принимает аргументы типа x (integer) 
clauses 
    r1(1).    % Факт r1 принимает 1 
    r2(2).    % Факт r2 принимает 2 
    r(X):-r1(X),!, write("Согласовано первое определение ").
    r(_) :- fail.
    r(X):-r2(X),!, write("Согласовано второе определение ").
    % Правило, показывающее определение(-я), которое(-ые) сработало(-и) и сразу завершающее работу
goal 
    r(2).    % Поиск X, который удовлетворяют цели
*/



/*
domains
    l = integer*
predicates
    nondeterm append2(l, l, l)
clauses
    append2([], L, L) :- !.    % Отсечение нужно,чтобы найти единственное решение при двух неизвестных и данном результирующем списке
    append2([H|L1], L2, [H|L3]) :- append2(L1, L2, L3).
goal
    append2([1,3],[2,4],L);         % Соединение 2 списокв
    append2(L1,L2,[1,3,2,4]);       % Поиск 2 списков, соедиение которых даёт данный список.
    append2([1,3],L2,[1,3,2,4]);    % Нахождение списка, который при соединение с предыдущим даст результирующий
    append2(L1,[2,4],[1,3,2,4]).    % Нахождение списка, который при соединение с последующим даст результирующий
*/



/*
domains
    x = integer
predicates
    nondeterm p(x)
    nondeterm p1(x)
    nondeterm p2(x)
    nondeterm p4(x)
    nondeterm p11(x)
    nondeterm p22(x)
clauses
    p1(1).
    p1(11).
    p2(1).
    p2(11).
    p4(X) :- X = 10 + 10.
    p11(X) :- p1(X),!.
    p22(X) :- p2(X),!.
    p(X) :- p11(X), write("p1 ").
    p(Y) :- p22(Y), write("p2 ").
    p(Z) :- p4(Z), write("p4 ").
goal 
    p(X).
*/



/*
domains 
    l = integer * 
predicates
    nondeterm fib(l)
clauses
    fib([_]).
    fib([_,_]).
    fib([H1|[H2|[H3|[]]]]) :- H3 = H1 + H2.
    fib([H1|[H2|[H3|L]]]) :- H3 = H1 + H2, fib([H2|[H3|L]]).
goal 
    fib([2,2,4,6,10,16]).
*/



/*
domains
    name = symbol 
predicates
    nondeterm human (name)
    nondeterm parent (name,name)
    nondeterm male (name)
    nondeterm female (name)
    nondeterm father (name,name)
    nondeterm mother (name,name) 
    nondeterm son (name,name)
    nondeterm daughter (name,name)
    nondeterm brother (name,name)
    nondeterm sister (name,name)
    nondeterm brothers (name,name)
    nondeterm sisters (name,name)
    nondeterm grandfather (name,name)
    nondeterm grandmother (name,name)
    nondeterm uncle (name,name)
    nondeterm aunt (name,name)
    nondeterm nephew (name,name)
    nondeterm niece (name,name)
    nondeterm ancestor (name,name)
    nondeterm offspring (name,name)
    nondeterm odnogodok (name,name)
    nondeterm adult (name)
    nondeterm child (name)
    nondeterm sibling (name,name)
    nondeterm odnogodokS (name,name)
    nondeterm odnogodokC (name,name)
    nondeterm odnogodokP (name,name)
clauses
    human("Григорий").
    human("Ольга").
    human("Виктор").
    human("Вероника").
    human("Вика").
    human("Дима").
    human("Джон").
    human("Алла").
    human("Алексей").
    human("Алена").
    human("Николай").
    human("Степан").
    human("Саша").
    human("Валерий").
    human("Наташа").

    parent("Григорий","Вика").
    parent("Григорий","Дима").
    parent("Григорий","Джон").
    parent("Григорий","Алла").
    parent("Григорий","Алексей").
    parent("Ольга","Вика").
    parent("Ольга","Дима").
    parent("Ольга","Джон").
    parent("Ольга","Алла").
    parent("Ольга","Алексей").
    parent("Виктор","Алена").
    parent("Виктор","Николай").
    parent("Виктор","Лиза").
    parent("Вероника","Алена").
    parent("Вероника","Николай").
    parent("Вероника","Лиза").
    parent("Алексей","Степан").
    parent("Алексей","Саша").
    parent("Алена","Степан").
    parent("Алена","Саша").
    parent("Николай","Валерий").
    parent("Николай","Наташа").
    parent("Алла","Валерий").
    parent("Алла","Наташа").
    parent("Саша","Петр").
    parent("Наташа","Стас").
 
    male(Y) :- Y = "Григорий"; Y = "Виктор"; Y = "Дима"; Y = "Джон"; Y = "Алексей"; Y = "Николай"; Y = "Степан"; Y = "Саша"; Y = "Валерий", Y = "Петр"; Y = "Стас".
    female(X) :- X = "Ольга"; X = "Вероника"; X = "Вика"; X = "Алла"; X = "Алена"; X = "Наташа", X = "Лиза".
 
    father(X,Y) :- parent(X,Y), male(X).
    mother(X,Y) :- parent(X,Y), female(X).
 
    son(X,Y) :- parent(Y,X), male(X).
    daughter(X,Y) :- parent(Y,X), female(X).
 
    brother(X,Y) :- parent(Z,X), parent(Z,Y), male(X), X <> Y. 
    sister(X,Y) :- parent(Z,X), parent(Z,Y), female(X), X <> Y. 
 
    brothers(X,Y) :- brother(X,Y), male(Y).
    sisters(X,Y) :- sister(X,Y), female(Y).
 
    grandfather(X,Y) :- father(X,Z), parent(Z,Y).
    grandmother(X,Y) :- mother(X,Z), parent(Z,Y).
 
    uncle(X,Y) :- brother(X,Z), parent(Z,Y).
    aunt(X,Y) :- sister (X,Z), parent(Z,Y).
 
    nephew(X,Y) :- son(X,Z), brother(Y,Z); son(X,Z), sister(Y,Z).
    niece(X,Y) :- daughter(X,Z), brother(Y,Z); daughter(X,Z), sister(Y,Z).
 
    ancestor(X,Y) :- parent(X,Y).
    ancestor(X,Y) :- parent(X,Z), ancestor(Z,Y).
 
    offspring(X,Y) :- ancestor(Y,X).
 
    sibling(X,Y) :-  brother(X,Y), X <> Y; sister(X,Y), X <> Y.
 
    odnogodokS(X,Y) :- sibling(X,Y).
    odnogodokS(X,Y) :- sibling(Z,T), parent(Z,X), parent(T,Y), X <> Y.
    odnogodokS(X,Y) :- parent(X,Z), parent(T,Z), sibling(T,Y), X <> Y.
    odnogodokS(X,Y) :- parent(T,Z), parent(Y,Z), sibling(T,X), X <> Y.
    odnogodokS(X,Y) :- parent(W,Z), parent(T,Z), sibling(W,X), sibling(T,Y), X <> Y.
    odnogodokC(X,Y) :- parent(Z,X), parent(T,Y), odnogodokS(Z,T), X <> Y.
    odnogodokP(X,Y) :- parent(X,Z), parent(Y,T), odnogodokS(Z,T), X <> Y.
   
    odnogodok(X,Y) :- odnogodokS(X,Y); odnogodokC(X,Y); odnogodokP(X,Y).
   
    adult(X) :- parent(X,_); odnogodok(X,Y), parent(Y,_).
   
    child(X) :- not (adult(X)).
goal
    odnogodokP(X,Y).
*/



/*
domains
    name = symbol
predicates
    nondeterm attitude (name,name,name)
    nondeterm result (name,name,name)
clauses
    attitude("Работающая дрель","Количество отверстий","плюс").
    attitude("Количество отверстий","Количество стен с отверстиями","плюс").
    attitude("Работающая дрель","Шум","плюс").
    attitude("Шум","Настроение","минус").
    attitude("Настроение","Количество свободных мест","минус").
 
    result(X,Y,"плюс") :- attitude(X,Y,"плюс").
    result(X,Y,"плюс") :- attitude(X,Z,"плюс"), result(Z,Y,"плюс").
    result(X,Y,"плюс") :- attitude(X,Z,"минус"), result(Z,Y,"минус").
 
    result(X,Y,"минус") :- attitude(X,Y,"минус").
    result(X,Y,"минус") :- attitude(X,Z,"плюс"), result(Z,Y,"минус").
    result(X,Y,"минус") :- attitude(X,Z,"минус"), result(Z,Y,"плюс").
goal
    result(X,Y,Z).
*/
