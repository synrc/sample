-module(review).
-behaviour(supervisor).
-behaviour(application).
-compile(export_all).
main(A)    -> mad:main(A).
stop(_)    -> ok.
start()    -> start(normal,[]).
init([])   -> kvs:join(), {ok, {{one_for_one, 5, 10}, []}}.
start(_,_) -> {ok, _} = cowboy:start_clear(http, [{port, 8001}],
              #{ env => #{dispatch => n2o_cowboy2:points()} }),
              supervisor:start_link({local,review},review,[]).
