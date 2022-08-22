program cor_da_casa_do_canto_inferior_direito;
var l, c: longint;

begin
    read(l, c);
    if (l mod 2) = (c mod 2) then
        write('BRANCA')
    else
        write('PRETA');
end.
