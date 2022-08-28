program testa_se_primo;
var i: longint;

function eh_primo(n: longint): boolean;
var k: longint;
begin
    eh_primo := true;
    k := 3;

    if n = 1 then
        eh_primo := false
    else if n > 3 then
    begin
        if n mod 2 = 0 then
            eh_primo := false
        else
        begin
            while (k <= sqrt(n)) and (n mod k <> 0) do
                k := k + 2;
            if n mod k = 0 then
                eh_primo := false;
        end;
    end;
end;

begin
    for i := 1 to 10000 do
        if eh_primo(i) then
            writeln(i);
end.