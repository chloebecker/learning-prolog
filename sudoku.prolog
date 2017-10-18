% SUDOKUUU

% represent the board as a list of lists

% A | B | C | D
% _   _   _   _
% E | F | G | H		--> [[A,B,C,D],[E,F,G,H],[I,J,K,L],[M,N,O,P]]
% _   _   _   _
% I | J | K | L
% _   _   _   _
% M | N | O | P

% all letters start with domain {1,2,3,4}
% ^domains are updated as you add numbers

%---
% REMOVE ELEMENT (TAKE)
% take(L1, E, L2) --> takes a list and an element, returns list w/out E

% base case!
take([H | T], H, T).
take([H | T], R, [H | S]) :- take(T, R, S).
%---
% PERMUTATIONS
% perm(L1, L2) --> L2 is permutation of L1

% base case
perm([], []).
perm(L, [H | T]) :- take(L,H,S), perm(S, T).
%---
% SUDOKU

sudoku([[X11,X12,X13,X14],[X21,X22,X23,X24],[X31,X32,X33,X34],[X41,X42,X43,X44]]) :-
	% rows
	perm([X11,X12,X13,X14], [1,2,3,4]),
	perm([X21,X22,X23,X24], [1,2,3,4]),
	perm([X31,X32,X33,X34], [1,2,3,4]),
	perm([X41,X42,X43,X44], [1,2,3,4]),
	% columns
	perm([X11,X21,X31,X41], [1,2,3,4]),
	perm([X12,X22,X32,X42], [1,2,3,4]),
	perm([X13,X23,X33,X43], [1,2,3,4]),
	perm([X14,X24,X34,X44], [1,2,3,4]),
	% squares
	perm([X11,X12,X21,X22], [1,2,3,4]),
	perm([X31,X32,X41,X42], [1,2,3,4]),
	perm([X13,X14,X23,X24], [1,2,3,4]),
	perm([X33,X34,X43,X44], [1,2,3,4]).