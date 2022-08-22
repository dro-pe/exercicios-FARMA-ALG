program coincidencia_37;
var n, n37, somadig: longint;

begin
    somadig := 0;
    read(n);
    n37 := n*37;
    
    while n37 <> 0 do
    begin
        somadig := somadig + n37 mod 10;
        n37 := n37 div 10;
    end;
    
    if somadig = n then
        write('SIM')
    else
        write('NAO');
end.
