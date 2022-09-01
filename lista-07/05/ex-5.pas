program vetores_002;
const MIN = 1; MAX = 100;
type vetor_i = array[MIN..MAX] of longint;

procedure adiciona_termo(var w   : vetor_i;
                         t       : longint;
                         var tamw: longint);
begin
    w[tamw + 1] := t;
    tamw := tamw + 1;
end;

function posicao(var w  : vetor_i;
                 n, alvo: longint): longint;
var i: longint;
begin
    posicao := 0;
    i := 1;
    while (i <= n) and (w[i] <> alvo) do
        i := i + 1;
    if i <= n then
        posicao := i;
end;

var v        : vetor_i;
    n, m, tam: longint;
begin
    read(n);
    if n = 0 then
        writeln('vetor vazio')
    else
    begin
        tam := 0;
        while n <> 0 do
        begin
            adiciona_termo(v, n, tam);
            read(n);
        end;

        read(m);
        while m <> 0 do
        begin
            writeln(posicao(v, tam, m));
            read(m);
        end;
    end;
end.