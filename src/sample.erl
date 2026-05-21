-module(sample).
-behaviour(supervisor).
-behaviour(application).
-export([start/0, start/2, stop/1, init/1]).

stop(_) -> ok.
start() -> start(normal, []).

start(_, _) ->
    cowboy:start_clear(http, [{port, application:get_env(n2o, port, 8001)}],
                              #{env => #{dispatch => n2o_cowboy:points()}}),
    supervisor:start_link({local, sample}, sample, []).

init([]) ->
    kvs:join(),
    {ok, {{one_for_one, 5, 10}, []}}.
