program converte_bin_para_dec;
var n: longint;

function converte_em_decimal(b: longint): longint;
var bitAtual, pot2, d: longint;
begin
    d := 0;
    pot2 := 1;

    while b <> 0 do
    begin
        bitAtual := b mod 10;
        d := d + pot2*bitAtual;
        pot2 := pot2*2;

        b := b div 10;
    end;

    converte_em_decimal := d;
end;

begin
    read(n);
    writeln(converte_em_decimal(n));
end.