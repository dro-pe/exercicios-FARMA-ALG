program contrario;
var n, m: longint;

function contrario(a: longint): longint;
begin
    contrario := 0;
    while a <> 0 do
    begin
        contrario := contrario*10 + (a mod 10);
        a := a div 10;
    end;
end;

function eh_contrario(i, j: longint): boolean;
begin
    eh_contrario := false;
    if contrario(i) = j then
        eh_contrario := true;
end;

begin
    read(n, m);
    if eh_contrario(n, m) then
        writeln(n,' eh o contrario de ',m)
    else
        writeln(n,' nao eh o contrario de ',m);
end.