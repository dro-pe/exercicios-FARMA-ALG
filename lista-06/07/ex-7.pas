program calcula_percentual;
var antigo, atual: real;

function aumento_percentual(ant, atu: real): real;
var dif: real;
begin
    dif := atu - ant;
    aumento_percentual := dif/ant;
end;

begin
    read(antigo, atual);
    while (antigo <> 0) or (atual <> 0) do
    begin
        writeln(aumento_percentual(antigo, atual):0:2);
        read(antigo, atual);
    end;
end.