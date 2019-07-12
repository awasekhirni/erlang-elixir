%% Syed Awase Khirni Copyright 2015-16 TPRI/SYCLIQ
%% http://www.territorialprescience.com or www.sycliq.com
%% awasekhirni@gmail.com
%% Penalties & Liabilities apply copying the code without seeking permission
%% builtin functions of lists module in erlang

-module(ex24).
-compile(export_all).

%% list operations
%% occur from right to left 
%% [a,b,c] --[a,b] -- [c].
%% [a,b]--[c]--[a,b].

%% hd() to fetch the head of a list 
%% tl() to fetch the tail of a list 
%% hd([23,54,75,86,78]).

allElementsCheck()->
    L=[2,4,6,8],
    F=fun(X)->X rem 2==0 end,
    lists:all(F,L).

anyElementsCheck()->
    G=[2,4,6,9],
    K=fun(X)->X rem 2==0 end,
    lists:any(K,G).

appendOp()->
    V=[2,4,5,6],
    J=[4,5,6,7],
    lists:append(V,J).

concatIng()->
    %Accepts a list of items (atom, integer, float, string) and returns the concatenation of their textual representation as a list.
    lists:concat(["ab",".",1,cd]).

deleteIng()->
    %deletes an element from the list 
    % it removes the first occurence from the list 
    X=2,
    Y=[3,4,5,6,7,8,9,2,11,25,2],
    lists:delete(X,Y).

%% Called as filter(Pred, List). Returns a list containing only the elements that return true for the Pred.
filterIng()->
    Cutoff=fun(X)->X>36 end,
    Marks=[76,33,46,67,89,93,99,78,57,69],
    lists:filter(Cutoff,Marks).


%% flatten 
flattenIng()->
        lists:flatten([1, [2], [3, 4, [5, [6, 7]]], [[[[8]]]]]).


%%fetch the last element of the list 
fetchLast()->
        lists:last([24,43,432,2345,53,235,63,523]).
    

%% Applies function Fun to every item of the list and returns the resulting list.

elementMultiplier()->
    lists:map(fun(I)->3*I end, [22,33,44]).

%%returns the maximum/min of the list
maxMin()->
    lists:min([24,43,432,2345,53,235,63,523]),
    lists:max([24,43,432,2345,53,235,63,523]).


%% member check of the list 
checkMember()->
    X=63,
    Mylist=[24,43,432,2345,53,235,63,523],
    lists:member(X,Mylist).


%% return the Nth element o the list.
fetchNthelement()->
    X=4,
    Mylist=[24,43,432,2345,53,235,63,523],
    lists:nth(X,Mylist).


%%Partitions a list to two according to if the elements satisfy or not a given predicate.
satisFactory()->
        L = [1, a, b, 2, c, 3.0, d, {4}],
        {Satisfy,Not}=lists:partition(fun(X) -> is_number(X) end, L),
        Satisfy.


%%check if the first list is a prefix of the second list 
checkPrefix()->
    lists:prefix([a, b, c], [a, b, c, d, e]).


%%generate reverse of a list 
reversal()->
    lists:reverse([u,v,w,x,y,z]).


%%generate a sequence of integers. 
%% seq(From,To, [,Increment]).
peckingOrder()->
    lists:seq(1,10).


%% sorting a list in increasing order 
sortier()->
    lists:sort([1256,4653,36462,4373,3635,38462,563,736]).


%%splits the list into two based on the input of number of elements. 
hairSplit()->
    L=[1256,4653,36462,4373,3635,38462,563,736],
    lists:sublist(L,4).
    %lists:sublist(L,3,5).


%% provide the exclusion of elements 
exclusion()->
    lists:subtract("Omaria","O").

%%if the first list is a suffix of the second list
tailOrder()->
    lists:suffix([3, 4], [a, b, 1, 2, 3, 4]).

%% to remove duplicates from the list and sort them 
dupSort()->
        lists:usort([5, 3, 2, 3, 2, 1, 4, 5]).


%%compute the sum of the elements of a list containing numbers
totality()->
    lists:sum([1256,4653,36462,4373,3635,38462,563,736]).


%% to extract a prefix of a list that is to make a list of all elements at the head of the list that satisfy the filter condition. 
filterTaken()->
    lists:takewhile(fun(X)-> X>36 end,[74,38,34,23,43,16,36,67,89,18,10,78,80,64,89,72,91]).
    

%% to skip a prefix of a list that is to make a list of all elements at the head of the list that satisfy the filter condition 
filterSkip()->
    C=fun(X)-> X>36 end,
    lists:dropwhile(C,[74,38,34,23,43,16,36,67,89,18,10,78,80,64,89,72,91]).
