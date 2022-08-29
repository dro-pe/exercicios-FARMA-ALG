program maximizar_soma;
const MIN = 1; MAX = 200;
type vetor_i = array[MIN..MAX] of longint;
var n: longint;
    v: vetor_i;

procedure le_vetor(var w: vetor_i;
                   tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        read(w[i]);
end;

function soma_vetor(var w: vetor_i;
                    inicio, fim: longint): longint;
var i: longint;
begin
    soma_vetor := 0;

    for i := inicio to fim do
        soma_vetor := soma_vetor + w[i];
end;

function maior_soma(var w: vetor_i;
                    tam: longint): longint;
var i, j: longint;
begin
    maior_soma := w[1];

    for i := 1 to tam do
        for j := 1 to tam do
        begin
            if soma_vetor(w, i, j) > maior_soma then
                maior_soma := soma_vetor(w, i, j);
        end;
end;

begin
    read(n);
    le_vetor(v, n);
    writeln(maior_soma(v, n));
end.