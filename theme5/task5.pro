���(����).
���(���).
���(����).
���(����).

�����(1).
�����(2).
�����(3).
�����(4).

������������(X, Y) :- ���(X), �����(Y), 
    X = ���, ������������(����, Y1), Y > Y1.
������������(X, Y) :- ���(X), �����(Y), 
    X = ����, ������������(����, Y1), Y > Y1.
������������(X, Y) :- ���(X), �����(Y), 
    X = ����, not(Y = 4).
������������(X, Y) :- ���(X), �����(Y), 
    X = ����, ������������(���, Y1), Y > Y1.

�������(X1, Y1, X2, Y2, X3, Y3, X4, Y4):-
    ������������(X1, Y1),
    ������������(X2, Y2),
    ������������(X3, Y3),
    ������������(X4, Y4),
    Y1 \= Y2, Y1 \= Y3, Y1 \= Y4,
    Y2 \= Y3, Y2 \= Y4,
    Y3 \= Y4.