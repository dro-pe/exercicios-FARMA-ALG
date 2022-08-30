program ocorrencias;
const MIN = 1; MAX = 200;
type vetor_i = array[MIN..MAX] of longint;

procedure le_vetor(var w: vetor_i;
                   tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        read(w[i]);
end;

function subsequencia_eh_igual(var w, subw: vetor_i;
                               inicio, fim: longint): boolean;
var i: longint;
begin
    subsequencia_eh_igual := false;
    i := 1;

    while (inicio <= fim) and (w[inicio] = subw[i]) do
    begin
        i := i + 1;
        inicio := inicio + 1;
    end;

    if inicio > fim then
        subsequencia_eh_igual := true;
end;

function conta_subsequencias(var w, subw: vetor_i;
                             tamw, tamsw: longint): longint;
var soma, i: longint;
begin
    soma := 0;
    for i := 1 to (tamw - tamsw + 1) do
        if subsequencia_eh_igual(w, subw, i, (i + tamsw - 1)) then
            soma := soma + 1;
    conta_subsequencias := soma;
end;

var n, m: longint;
    v, subv: vetor_i;
begin
    read(n, m);
    le_vetor(v, n);
    le_vetor(subv, m);
    writeln(conta_subsequencias(v, subv, n, m));
end.