program media_dos_valores_lidos;
    var x, soma, n: longint;
        media: real;
        
    begin
        read(x);
        if x <> 0 then
        begin
            n := 0;
            soma := 0;
            while x <> 0 do
            begin
                n := n + 1;
                soma := soma + x;
                media := soma/n;
                read(x);
            end;
            
            write(media:0:2);
        end;
    end.
