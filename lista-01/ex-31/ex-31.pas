program angulo_escada;
    var cosseno, distancia, escada, altura: real;
    
    begin
        read(cosseno, distancia);
        escada := distancia / cosseno;
        altura := sqrt(escada*escada - distancia*distancia);
        writeln(altura:0:3);
    end.
