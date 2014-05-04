-module(pe2).
-export([solve/0]).

solve() ->
    pe2(1, 2, 0, 4000000).

pe2(Prev, Current, Sum, Max) when Sum < Max, Current rem 2 =:= 0 ->
    pe2(Current, Prev+Current, Sum+Current, Max);

pe2(Prev, Current, Sum, Max) when Sum < Max, Current rem 2 =/= 0 ->
    pe2(Current, Prev+Current, Sum, Max);

pe2(_, _, Sum, _) ->
    io:format("~w~n", [Sum]).
    