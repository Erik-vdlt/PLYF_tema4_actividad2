%potencia
potencia(A,0,1):-not(A=0). %ejemplo potencia(5,2,A)
potencia(X,Y,P):-Y>0,Y1 is Y-1,
potencia(X,Y1,P1), P is X*P1.

%factorial
factorial(0,1).%factorial(5,A)
factorial(N,Salida):- T is N-1,
factorial(T,S1), Salida is N*S1.

%division
division(A,B,0) :- B>A. %division(8,4,A)
division(A,B,Sa) :- T is A-B,
division(T,B,P), Sa is P+1.

%multiplicacion
multi(_,B,0):-B=0. %multi(5,4,A)
multi(A,B,R):-B>0, T is B-1.
multi(A,T,P), R is A+P.

fibo(0,0).
fibo(1,1).
fibo(N,R):- N>1,
    A is N-1,B is N-2,
    fibo(A,T1),fibo(B,T2),
    R is T1+T2.
    
