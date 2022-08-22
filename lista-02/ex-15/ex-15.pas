program aluzejo;
    var tipo, area: longint;
        qtde: real;
    
    begin
        read(tipo, area);
        
        if tipo = 1 then
            qtde := area/2
        else if tipo = 2 then
            qtde := area/3
        else if tipo = 3 then
            qtde := area/4;
            
        if (qtde - trunc(qtde)) <> 0 then (* arredonda o valor de area para cima *)
            qtde := trunc(qtde)+1;
            
        writeln(qtde:0:0,' caixas')
    end.
