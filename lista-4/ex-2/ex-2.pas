program numero_triangular;
var numero, x: longint;

begin
    read(numero);
    x := 0;
    
    while (x*(x+1)*(x+2)) < numero do
        x := x + 1;
        
    if (x*(x+1)*(x+2)) = numero then
        write(1)
    else
        write(0);
end.
