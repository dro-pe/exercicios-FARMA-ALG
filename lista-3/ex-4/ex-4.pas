program media_aritmetica;
    var m, i: longint;
        n, soma, media: real;
        
    begin
        i := 0;
        soma := 0;
        read(m);
        
        while i < m do
        begin
            read(n);
            soma := soma + n;
            i := i + 1;
        end;
        
        media := soma/m;
        
        write(trunc(media));
    end.
