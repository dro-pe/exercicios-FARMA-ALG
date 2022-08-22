program enesimo_termo;
    var k, ak, r, n, an: longint;
    
    begin
        read(k, ak, r, n);
        an := ak + (n-k)*r;
        writeln(an);
    end.
