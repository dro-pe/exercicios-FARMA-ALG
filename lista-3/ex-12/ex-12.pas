program soma_dos_pares_entre_n_e_m;
var n, m, par, soma: longint;

begin
    read(n, m);
    soma := 0;
    if n mod 2 = 0 then         (* descobre o primeiro par maior que n *)
        par := n + 2
    else
        par := n + 1;
        
    while par < m do
    begin
        soma := soma + par;
        par := par + 2;
    end;
    
    write(soma);
end.
