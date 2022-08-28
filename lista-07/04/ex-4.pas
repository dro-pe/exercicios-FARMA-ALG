program vetores_004;
const MIN = 1; MAX = 200;
type vetor_i = array[MIN..MAX] of longint;
var n, i, j, tam_aux: longint;
    vetor, vdistintos: vetor_i;

function esta_no_vetor_desordenado(var v: vetor_i;
                                   tam, alvo: longint): boolean;
var i: longint;
begin
    i := 1;
    esta_no_vetor_desordenado := false;
    while (i <= tam) and (v[i] <> alvo) do
        i := i + 1;
    
    if i <= tam then
        esta_no_vetor_desordenado := true;
end;

procedure insere_no_vetor_desordenado(var v: vetor_i;
                                      var tam: longint;
                                      item: longint);
begin
    v[tam + 1] := item;
    tam := tam + 1;
end;

procedure acha_distintos(var v: vetor_i;
                         tam1: longint;
                         var vaux: vetor_i;
                         var tam2: longint);
var i: longint;
begin
    for i := 1 to tam1 do
    begin
        if not(esta_no_vetor_desordenado(vaux, tam2, v[i])) then
            insere_no_vetor_desordenado(vaux, tam2, v[i]);
    end;
end;

procedure imprime_vetor(var v: vetor_i;
                        tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        write(v[i],' ');
    writeln();
end;

function conta_repeticoes(var v: vetor_i;
                          tam, alvo: longint): longint;
var i: longint;
begin
    conta_repeticoes := 0;
    for i := 1 to tam do
        if v[i] = alvo then
            conta_repeticoes := conta_repeticoes + 1;
end;

begin
    tam_aux := 0;
    read(n);
    if n = 0 then
        writeln('vetor vazio')
    else
    begin
        for i := 1 to n do
            read(vetor[i]);

        acha_distintos(vetor, n, vdistintos, tam_aux);

        if tam_aux = 1 then
            write('a sequencia tem 1 numero distinto: ')
        else
            write('a sequencia tem ',tam_aux,' numeros distintos: ');
        imprime_vetor(vdistintos, tam_aux);

        for j := 1 to tam_aux do
        begin
            if conta_repeticoes(vetor, n, vdistintos[j]) = 1 then
                writeln(vdistintos[j],' ocorre 1 vez')
            else
                writeln(vdistintos[j],' ocorre ',conta_repeticoes(vetor, n, vdistintos[j]), ' vezes');
        end;
    end;
end.