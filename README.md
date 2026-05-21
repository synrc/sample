SAMPLE: WebSocket Application
=============================

NITRO/N2O pages that work on top of raw COWBOY/RANCH connections. Pure old-school.

Intro
-----

SAMPLE application consist of two page modules `login` and `index`.
It creates WebSocket connection to `n2o` server.
The permanent example is accesible at [sample.n2o.dev](https://sample.n2o.dev).

Index
-----

Init event.
Chat event.
Client event.
File Transfer event.

Login
-----

Channel init.
Login event.

Setup
-----

To run review application just clone, build and run:

```
$ rebar3 get-deps
$ rebar3 dialyzer
$ rebar3 shell
```

Then open it in browser:

```
$ open http://localhost:8001/app/login.htm
```

Credits
-------

* Brought with ❤ by 5HT
