SAMPLE: WebSocket Application
=============================

[![Build Status](https://travis-ci.com/synrc/sample.svg?branch=master)](https://travis-ci.com/synrc/sample)

NITRO/N2O pages that work on top of raw COWBOY/RANCH connections.

Intro
-----

SAMPLE application consist of two page modules `login` and `index`.
It creates WebSocket connection to `n2o` server.
The permanent example is accesible at <a href="https://sample.n2o.dev/index.htm">https://sample.n2o.dev/index.htm</a>.

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
$ open http://localhost:8001/app/login.htm
```

Credits
-------
* Brought with ❤ by N2O community
