program poligono_regular;
var n, i, aux, irregularidades: longint;

begin
    i := 0;
    irregularidades := 0;
    read(n);
    aux := n;
    
    while n <> 0 do
    begin
        i := i + 1;
        if n <> aux then
            irregularidades := irregularidades + 1;
        read(n);
    end;
    
    if (irregularidades = 0) and (i > 2) then
        write('SIM')
    else
        write('NAO');
end.
