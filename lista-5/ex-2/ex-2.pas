program soma_infinita;
var i, num, den: longint;
    s: real;
    
begin
    i := 0;
    s := 0;
    num := 1;
    den := 1;
    
    while i < 5 do
    begin
        s := s + num/den;
        num := num + den;
        den := den + num;
        i := i + 1;
    end;
    
    writeln(s:0:2);
end.
