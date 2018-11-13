-module(review).
-behaviour(supervisor).
-behaviour(application).
-compile(export_all).
main(A)    -> mad:main(A).
stop(_)    -> ok.
start()    -> start(normal,[]).
start(_,_) -> supervisor:start_link({local,review},review,[]).
init([])   -> kvs:join(), {ok, {{one_for_one, 5, 10}, [spec()]}}.
spec()     -> ranch:child_spec(http, 100, ranch_tcp, port(), cowboy_protocol, env()).
env()      -> [ { env, [ { dispatch, points() } ]          } ].
static()   ->   { dir, "priv/static", mime()               }.
n2o()      ->   { dir, "deps/n2o/priv",           mime()   }.
mime()     -> [ { mimetypes, cow_mimetypes, all            } ].
port()     -> [ { port, application:get_env(n2o,port,8001) } ].
points()   -> cowboy_router:compile([{'_', [
                { "/n2o/[...]", n2o_static,  n2o()      },
                { "/app/[...]", n2o_static,  static()   },
                { "/ws/[...]",  n2o_stream,  []         } ]}]).
