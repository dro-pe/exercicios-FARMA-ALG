program v_esfera;
    var d, r, v: real;
    
    begin
        read(d);
        r := d/2;
        v := (4*3.14/3)*(r*r*r);
        writeln(v:0:2);
    end.
