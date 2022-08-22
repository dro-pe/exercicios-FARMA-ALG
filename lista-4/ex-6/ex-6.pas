program mucholouco;
var n, k, i, soma: longint;

begin
    read(n);
    k := n;
    
    read(n);
    i := 2;
    soma := k + n;
    
    while (n <> 2*k) and (n <> k/2) do
    begin
        k := n;
        read(n);
        soma := soma + n;
        i := i + 1;
    end;
    
    write(i, ' ', soma, ' ', k, ' ', n);
end.
