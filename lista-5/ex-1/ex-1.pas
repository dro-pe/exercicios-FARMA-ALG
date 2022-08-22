program serie;
var n, m: longint;
    soma: real;

begin
    soma := 0;
    m := 1;
    
    read(n);
    n := n - 1;
    while n <> 0 do
    begin
        soma := soma + m/n;
        m := m + 1;
        n := n - 1;
    end;
    
    writeln(soma:0:2);
end.
