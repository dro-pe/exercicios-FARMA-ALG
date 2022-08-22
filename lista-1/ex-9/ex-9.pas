program iluminacao;
    var dim1, dim2, area, potencia: longint;
    
    begin
        read(dim1, dim2);
        area := dim1*dim2;
        potencia := 18*area;
        
        writeln(area,' ',potencia)
    end.
