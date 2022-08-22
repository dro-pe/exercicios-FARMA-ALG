program maior_e_menor;
    var n, maior, menor: longint;
    
    begin
        read(n);
        if n <> 0 then
        begin
            maior := n;
            menor := n;
            while n <> 0 do
            begin
                if n > maior then
                    maior := n;
                if n < menor then
                    menor := n;
                read(n);
            end;
            
            write(maior,' ',menor);
        end;
    end.
