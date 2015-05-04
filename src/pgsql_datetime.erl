-module(pgsql_datetime).

-export([mod/1]).
-export([mod/0]).

-define(APP, epgsql).
-define(MOD, datetime_mod).

mod(true) -> mod_(integer_datetimes_mod);
mod(false) -> mod_(non_integer_datetimes_mod).

mod_(Key) ->
    {ok, Mod} = application:get_env(?APP, Key),
    put(?MOD, Mod),
    ok.

mod() ->
    get(?MOD).
