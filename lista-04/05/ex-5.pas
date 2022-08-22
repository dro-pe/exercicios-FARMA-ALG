program valor_quadrado;
var n1, n2, erros: longint;

begin
    erros := 0;
    
    read(n1);
    if n1 <> 0 then
    begin
        read(n2);
        
        while n1 <> 0 do
        begin
            if n1*n1 <> n2 then
                erros := erros + 1;
            
            read(n1);
            if n1 <> 0 then
                read(n2);
        end;
    end;
    
    if erros = 0 then
        write(1)
    else
        write(0);
end.
