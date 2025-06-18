col(X,Y) :- Y is (3*X + 1) * (X mod 2)  +  (floor(X/2) * ((X + 1) mod 2)).

c2(X,Y,Z) :- col(X,Y), col(Y,Z).

col(X) :- col(X,Y), (Y == 1, !; col(Y)). 
