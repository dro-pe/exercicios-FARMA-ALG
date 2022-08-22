program prod_impares_ab;
    var a, b, produto: longint;
    
    begin
        produto := 1;
        read(a, b);
        if (a mod 2 = 0) or (b mod 2 = 0) or (a > b) then
            write('erro')
        else
        begin
            while a <= b do
            begin
                produto := produto*a;
                a := a + 2;
            end;
            
            write(produto);
        end;
    end.
