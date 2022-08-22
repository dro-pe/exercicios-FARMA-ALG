program maior_mult_de_7;
var n, maior: longint;

begin
    read(n);
    maior := 0;
    
    while n <> 0 do
    begin
        if n mod 7 = 0 then
        begin
            if n > maior then
                maior := n;
        end;
        read(n);
    end;
    
    write(maior);
end.
