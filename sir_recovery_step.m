function [nA,nr] = sir_recovery_step(A,z,r)
%A - adjacency matrix
%z - list of infected nodes
%r - rate of recovery - the probability the node will recover in this time step (independently)

%nA - new adjacency matrix with removed recovered nodes
%nr - "newly recovered" - the list of nodes recovered/removed in this iteration

remove = times(z',rand(size(z,2),1));
remove(remove > 1-r) = 1;
remove(remove <= 1-r) = 0;
A(remove == 1,:) = 0;
A(:,remove == 1) = 0;
nA = A;
nr = remove;
end