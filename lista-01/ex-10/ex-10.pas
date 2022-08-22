program mediafinal;
    var p1, p2, p3, media: longint;
    
    begin
        read(p1, p2, p3);
        media := trunc((p1+p2*2+p3*3)/(1+2+3));
        writeln(media);
    end.
