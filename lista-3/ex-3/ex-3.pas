program raiz_rudimentar;
    var m, n, cont: longint;
    
    begin
        read(m, n);
        cont := 0;
        
        while m mod n = 0 do
        begin
            m := m div n;
            cont := cont + 1;
        end;
        
        write(cont);
    end.
