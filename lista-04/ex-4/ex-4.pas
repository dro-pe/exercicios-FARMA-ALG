program k_primeiros_numeros_perfeitos;
var i, k, n, m, soma: longint;

begin
    i := 0;
    read(k);
    m := 1;
    n := 2;
    soma := 0;
    
    while i < k do
    begin
        while m <= (n div 2) do
        begin
            if n mod m = 0 then
                soma := soma + m;
            m := m + 1;
        end;
        
        if soma = n then
        begin
            write(n,' ');
            i := i + 1;
        end;
        
        m := 1;
        n := n + 1;
        soma := 0;
    end;
end.
