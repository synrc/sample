SAMPLE: WebSocket Application
=============================

[![Build Status](https://travis-ci.org/synrc/sample.svg?branch=master)](https://travis-ci.org/synrc/sample)

NITRO/N2O pages that work on top of raw COWBOY/RANCH connections.

Intro
-----

SAMPLE application consist of two page modules `login` and `index`.
It creates WebSocket connection to `n2o` server.
The permanent example is accesible at <a href="https://sample.n2o.space/index.htm">https://sample.n2o.space/index.htm</a>.

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
$ mad get sample
$ cd deps/sample
$ mad dep com pla rep
```

Then open it in browser:

```
$ open priv/ssl/fullchain.pem # setup trust for our localhost certificate
$ open https://localhost:8001/app/index.htm
```

Credits
-------
* Brought with ❤ by N2O community
