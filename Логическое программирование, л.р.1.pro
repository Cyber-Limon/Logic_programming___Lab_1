/*
domains
	x = symbol
	y, z = integer
predicates
	nondeterm p(x,y,z) % �������� ��������� ��������� ���� x (symbol), y (integer) � z (integer)
 	nondeterm p1(x,y) % �������� ��������� x � y
	nondeterm p2(x,z) % �������� ��������� x � z
	nondeterm p3(x,y) % �������� ��������� x � y
clauses
	p1(a,11). % ���� p1 ��������� 11 
	p1(a,1). % ���� p1 ��������� 1 
	p2(a,2). % ���� p2 ��������� 2 
	p3(a,3). % ���� p3 ��������� 3 
	p(X,Y,Z):-p1(X,Y),p2(X,Z),!. 
	p(X,Y,Z):-p2(X,Z),p3(X,Y),!. 
	% �������� p(x,y,z) ��������� 1 ����� � ������ �����, ����� ����������� ���� �� ���� �������, � ����� ��������� ������
goal
	p(a,Y,Z). % ����� Y � Z, ������� ������������� ����
*/



/*
domains 
	x = integer
predicates
	nondeterm r(x) % �������� ��������� ��������� ���� x (integer) 
	nondeterm r1(x) % �������� ��������� ��������� ���� x (integer) 
	nondeterm r2(x) % �������� ��������� ��������� ���� x (integer) 
clauses 
	r1(1). % ���� r1 ��������� 1 
	r2(2). % ���� r2 ��������� 2 
	r(X):-r1(X),!, write("����������� ������ ����������� ").
	r(_) :- fail.
	%r(X):-r2(X),!, write("����������� ������ ����������� ").
	% �������, ������������ �����������(�), �������(��) ���������(�) � ����� ����������� ������
goal 
    	r(2). % ����� X, ������� ������������� ����
*/



/*
domains
	l = integer*
predicates
	nondeterm append2(l, l, l)
clauses
	append2([], L, L) :- !. % ��������� �����,����� ����� ������������ ������� ��� ���� ����������� � ������ �������������� ������
	append2([H|L1], L2, [H|L3]) :- append2(L1, L2, L3).
goal
	append2([1,3],[2,4],L); % ���������� 2 �������
	append2(L1,L2,[1,3,2,4]); % ����� 2 �������, ��������� ������� ��� ������ ������.
	append2([1,3],L2,[1,3,2,4]); % ���������� ������, ������� ��� ���������� � ���������� ���� ��������������
	append2(L1,[2,4],[1,3,2,4]). % ���������� ������, ������� ��� ���������� � ����������� ���� ��������������
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
	human("��������").
	human("�����").
	human("������").
	human("��������").
	human("����").
	human("����").
	human("����").
	human("����").
	human("�������").
	human("�����").
	human("�������").
	human("������").
	human("����").
	human("�������").
	human("������").

	parent("��������","����").
	parent("��������","����").
	parent("��������","����").
	parent("��������","����").
	parent("��������","�������").
	parent("�����","����").
	parent("�����","����").
	parent("�����","����").
	parent("�����","����").
	parent("�����","�������").
	parent("������","�����").
	parent("������","�������").
	parent("������","����").
	parent("��������","�����").
	parent("��������","�������").
	parent("��������","����").
	parent("�������","������").
	parent("�������","����").
	parent("�����","������").
	parent("�����","����").
	parent("�������","�������").
	parent("�������","������").
	parent("����","�������").
	parent("����","������").
	parent("����","����").
	parent("������","����").
	
	male(Y) :- Y = "��������"; Y = "������"; Y = "����"; Y = "����"; Y = "�������"; Y = "�������"; Y = "������"; Y = "����"; Y = "�������", Y = "����"; Y = "����".
	female(X) :- X = "�����"; X = "��������"; X = "����"; X = "����"; X = "�����"; X = "������", X = "����".
	
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




/*
domains
	name = symbol
predicates
	nondeterm attitude (name,name,name)
	nondeterm result (name,name,name)
clauses
	attitude("���������� �����","���������� ���������","����").
	attitude("���������� ���������","���������� ���� � �����������","����").
	attitude("���������� �����","���","����").
	attitude("���","����������","�����").
	attitude("����������","���������� ��������� ����","�����").
	
	result(X,Y,"����") :- attitude(X,Y,"����").
	result(X,Y,"����") :- attitude(X,Z,"����"), result(Z,Y,"����").
	result(X,Y,"����") :- attitude(X,Z,"�����"), result(Z,Y,"�����").
	
	result(X,Y,"�����") :- attitude(X,Y,"�����").
	result(X,Y,"�����") :- attitude(X,Z,"����"), result(Z,Y,"�����").
	result(X,Y,"�����") :- attitude(X,Z,"�����"), result(Z,Y,"����").
goal
	result(X,Y,Z).
*/
	