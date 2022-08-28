program divisao_no_vetor;
type vetor_r = array[1..200] of real;
var n: longint;
    v: vetor_r;
    somaP, somaN: real;

procedure le_itens(var vetor: vetor_r;
                    k: longint);
var i: longint;
    item: real;
begin
    for i := 1 to k do
    begin
        read(item);
        vetor[i] := item;
    end;
end;

function soma_positivos(var vetor: vetor_r;
                        k: longint): real;
var i: longint;
    soma: real;
begin
    i := 2;
    soma := 0;

    while i <= k do
    begin
        if vetor[i] > 0 then
            soma := soma + vetor[i];
        i := i + 2;
    end;

    soma_positivos := soma;
end;

function soma_negativos(var vetor: vetor_r;
                        k: longint): real;
var i: longint;
    soma: real;
begin
    i := 1;
    soma := 0;

    while i <= k do
    begin
        if vetor[i] < 0 then
            soma := soma + vetor[i];
        i := i + 2;
    end;

    soma_negativos := soma;
end;

begin
    read(n);
    if n > 0 then
    begin
        le_itens(v, n);
        somaP := soma_positivos(v, n);
        somaN := soma_negativos(v, n);

        if somaN <> 0 then
            writeln((somaP/somaN):0:2)
        else
            writeln('divisao por zero');
    end
    else writeln('vetor vazio');
end.