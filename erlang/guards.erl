-module(guards).
-export([even/1, number/1, sum/1, return/1, wildcard/1, return1/1]).

% even functions
even(Int) when Int rem 2 == 0 -> true;
even(Int) when Int rem 2 == 1 -> false.

% number functions
number(Num) when is_integer(Num) -> integer;
number(Num) when is_float(Num)   -> float;
number(_Other)                   -> false.


sum(Boundary) -> sum_acc(1, Boundary, 0).
sum_acc(Index, Boundary, Sum) when Index =< Boundary ->
sum_acc(Index + 1, Boundary, Sum + Index);
sum_acc(_I, _B, Sum)->
Sum.


%X=2.
%try (X=3) of
%  Val -> {normal, Val}
%catch
%  _:_ -> 43
%end.
%
%try (X=3)  of
%  Val -> {Val}
%catch
%  error:Error -> {error, Error}
%end.
%
%try(throw(junyi)) of
% Val->{Val}
%catch
% throw:Error -> {throw, Error}
%end.
%

return_error(X) when X < 0 ->
throw({'EXIT', {badarith,
               [{exception,return_error,1},
               {erl_eval,do_apply,5},
               {shell,exprs,6},
               {shell,eval_exprs,6},
               {shell,eval_loop,3}]}});

return_error(X) when X == 0 -> 1/X;

return_error(X) when X > 0->
               {'EXIT', {badarith, [{exception,return_error,1},
          	   {erl_eval,do_apply,5},
			   {shell,exprs,6},
			   {shell,eval_exprs,6},
			   {shell,eval_loop,3}]}}.


return(X) when is_integer(X) ->
try return_error(X) of
        Val -> {normal, Val}
catch
		exit:Reason -> {exit, Reason};
		throw:Throw -> {throw, Throw};
		error:Error -> {error, Error}
end.

wildcard(X) when is_integer(X) ->
try return_error(X)
catch
		throw:Throw -> {throw, Throw};
		error:_     -> error;
		Type:Error  -> {Type, Error}
%		_           -> other;  % Will never be returned
%		_:_         -> other   %  Will never be returned
end.

return1(X) when is_integer(X) ->
try return_error(X) of
	Val -> {normal, Val}
catch
		exit:_ -> 34;
		throw:_ -> 99;
		error:_ -> 678
end.