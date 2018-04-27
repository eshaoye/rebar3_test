-module(sum_SUITE).

-compile(export_all).

all() ->
    [case1,
     case2].

init_per_suite(Config) ->
    Config.

end_per_suite(Config) ->
    Config.


case1(Config) ->
      3 = sum:add(1, 2).

case2(Config) ->
     4 = sum:add(1, 2).