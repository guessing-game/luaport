-module(luaport_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
  luaport_sup:start_link().

stop(_State) ->
  luaport_sup:stop().
