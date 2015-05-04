-module(pgsql_datetime).

-export([mod/1]).
-export([mod/0]).

-define(MOD, datetime_mod).

mod(true) -> put(datetime_mod, pgsql_idatetime);
mod(false) -> put(datetime_mod, pgsql_fdatetime).

mod() ->
    get(?MOD).
