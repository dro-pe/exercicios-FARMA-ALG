program testa_binario;
var n: longint;

function eh_binario(b: longint): boolean;
begin
    eh_binario := true;
    if b <> 0 then
    begin
        while (b <> 0) and ((b mod 10 = 0) or (b mod 10 = 1)) do
            b := b div 10;
        if b <> 0 then
            eh_binario := false;
    end;
end;

begin
    read(n);
    if eh_binario(n) then
        writeln('sim')
    else
        writeln('nao');
end.