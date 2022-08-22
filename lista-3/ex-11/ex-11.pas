program quantos_n_tem_em_m;
var n, m, cont: longint;

begin
    cont := 0;
    read(n, m);
    
    while m <> 0 do
    begin
        if m mod 10 = n then
            cont := cont + 1;
        m := m div 10;
    end;
    
    if cont = 0 then
        write('NAO')
    else
        write(cont);
end.
