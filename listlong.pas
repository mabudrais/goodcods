program Project1;
type
  ListType=Integer;
procedure findlongest(input:array of ListType;out starte,ende:Integer);
var
  k, tempend, tempstart: Integer;
   lastInput:ListType;
begin
  lastInput:=-1;tempend:=-1;tempstart:=-1; starte:=-1;ende:=-1;
  for k:=0 to Length(input)-1 do
  begin
      if (k<>0)and(input[k]=lastInput)then
      tempend:=k
      else
        tempstart:=k;
     lastInput:=input[k];
     if (tempend-tempstart)>(ende-starte)then
     begin
        starte:=tempstart;
        ende:=tempend;
     end;
  end;
end;
var
  s, e: Integer;
begin
  findlongest([1,4,7,7,59],s,e);
  WriteLn(s,e);
  ReadLn;
end.
