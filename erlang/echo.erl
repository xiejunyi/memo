-module(echo).
-export([go/0, go1/0, loop/0]).
go() ->
	 Pid = spawn(echo, loop, []),
     io:format("send msg: ~w~n",[hello]),
	 Pid ! {self(), hello},
	 receive
	 {Pid, Msg} ->
	 io:format("~w~n",[Msg])
end,
Pid ! stop.

loop() ->
	   receive
		{From, Msg} ->
         io:format("got it!~n"),
	  	 From ! {self(), {Msg,thanks}},
	 	   loop();
	   	 stop -> true
end.

go1() ->
	  register(echo, spawn(echo, loop, [])),
      echo ! {self(), hello},
	  receive
	    {_Pid, Msg} ->
		io:format("~w~n",[Msg])
      end.