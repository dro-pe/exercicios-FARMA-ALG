program compactacao;
const MIN = 1; MAX = 200;
type vetor_i = array[MIN..MAX] of longint;

procedure le_vetor(var w: vetor_i;
                   tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        read(w[i]);
end;

procedure imprime_vetor(var w: vetor_i;
                        tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        write(w[i],' ');
    writeln();
end;

procedure zera_vetor(var w: vetor_i;
                     tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        w[i] := 0;
end;

procedure insere(var w: vetor_i;
                 var tam: longint;
                 item: longint);
begin
    w[tam + 1] := item;
    tam := tam + 1;
end;

function esta_no_vetor(var w: vetor_i;
                       tam, alvo: longint): boolean;
var i: longint;
begin
    i := 1;
    esta_no_vetor := false;

    while (i <= tam) and (w[i] <> alvo) do
        i := i + 1;

    if i <= tam then
        esta_no_vetor := true;
end;

procedure compacta(var w: vetor_i;
                   tam1: longint;
                   var wc: vetor_i;
                   var tam2: longint);
var i: longint;
begin
    for i := 1 to tam1 do
    begin
        if not(esta_no_vetor(wc, tam2, w[i])) then
            insere(wc, tam2, w[i]);
    end;
end;

var n, nc: longint;
    v, vc: vetor_i;
begin
    read(n);
    nc := 0;
    while n <> 0 do
    begin
        le_vetor(v, n);
        compacta(v, n, vc, nc);
        
        write('O: ');
        imprime_vetor(v, n);
        write('C: ');
        imprime_vetor(vc, nc);

        zera_vetor(vc, nc);
        nc := 0;
        read(n);
    end;
end.