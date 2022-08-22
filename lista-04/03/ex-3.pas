program crescimento_populacoes;
var pa, pb, ta, tb: real;
    anos: longint;

begin
    read(pa, pb, ta, tb);
    anos := 0;
    
    if pa < pb then
    begin
        if ta > tb then
        begin
            while pa <= pb do
            begin
                pa := pa*(1 + ta);
                pb := pb*(1 + tb);
                anos := anos + 1;
            end;
        end;
    end
    else
    begin
        if tb > ta then
        begin
            while pb <= pa do
            begin
                pa := pa*(1 + ta);
                pb := pb*(1 + tb);
                anos := anos + 1;
            end;
        end;
    end;
    write(anos);
end.
