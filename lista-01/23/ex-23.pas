program enesimo_termo_pa;
    var n, r, a1, an: longint;
    
    begin
        read(n, r, a1);
        an := a1 + (n-1)*r;
        writeln(an);
    end.
