program n_eh_primo;
var n, i: longint;
    ehprimo: boolean;

begin
    read(n);
    ehprimo := true;
    i := 3;

    if n > 2 then
        if n mod 2 = 0 then
            ehprimo := false
        else
            while i <= sqrt(n) do
            begin
                if (n mod i) = 0 then
                    ehprimo := false;
                i := i + 2;
            end;
    
    if ehprimo then
        writeln(n,' eh primo!')
    else
        writeln(n,' nao eh primo.')
end.
