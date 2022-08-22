program n_primeiros;
var n, num, den, sinal: longint;
    soma: real;

begin
    sinal := 1;
    num := 1000;
    den := 1;
    
    read(n);
    while n > 0 do
    begin
        soma := soma + (num/den)*sinal;
        num := num - 3;
        den := den + 1;
        sinal := -sinal;
        
        n := n - 1
    end;
    
    writeln(soma:0:2);
end.
