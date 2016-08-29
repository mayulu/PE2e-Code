-module(motor_controller).
-export([add_event_handler/0]).


%%API
add_event_handler() ->
  event_handler:add_handler(errors, fun controller/1).


%%internal functions
controller(too_hot) ->
  io:format("Turn off the motor~n");

controller(X) ->
  io:format("~w ignores the event ~p~n", [?MODULE, X]).

