-module(pe1).
-export([solve/0]).

solve() ->
    pe1(999, 0).

pe1(Num, Sum) when Num > 0, Num rem 3 =:= 0; Num rem 5 =:= 0 ->
    pe1(Num-1, Sum+Num);

pe1(Num, Sum) when Num > 0 ->
    pe1(Num-1, Sum);

pe1(_, Sum) ->
    io:format("~w~n", [Sum]).