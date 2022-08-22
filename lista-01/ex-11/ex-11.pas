program relogio;
    var n, h, restante, m, s: longint;
    
    begin
        read(n);
        h := trunc(n/3600);
        restante := n - h*3600;
        m := trunc(restante/60);
        s := restante - m*60;
        
        writeln(h,':',m,':',s);
    end.
