program vetores_006;
type vetor_r = array[0..200] of real;
var cod, tam: longint;
    vetor: vetor_r;
    x: real;

function busca_no_vetor_ordenado(var v: vetor_r;
                                 n: longint;
                                 alvo: real): longint;
var inicio, meio, fim: longint;
begin
    inicio := 1;
    fim := n;
    meio := (fim + 1) div 2;

    while (inicio <= fim) and (v[meio] <> alvo) do
    begin
        if v[meio] < alvo then
            inicio := meio + 1
        else
            fim := meio - 1;
        meio := (fim + inicio) div 2;
    end;

    if inicio <= fim then
        busca_no_vetor_ordenado := meio
    else
        busca_no_vetor_ordenado := 0;
end;

procedure insere_no_vetor_ordenado(var v: vetor_r;
                                   var n: longint;
                                   item: real);
var i: longint;
begin
    i := n;
    v[0] := item;

    while v[i] > item do
    begin
        v[i + 1] := v[i];
        i := i - 1;
    end;

    v[i + 1] := item;
    n := n + 1;
end;

procedure remove_do_vetor_ordenado(var v: vetor_r;
                                   var n: longint;
                                   item: real);
var pos, i: longint;
begin
    pos := busca_no_vetor_ordenado(v, n, item);
    for i := pos to (n-1) do
        v[i] := v[i + 1];
    n := n - 1;
end;

procedure imprime_vetor(var v: vetor_r;
                       n: longint);
var i: longint;
begin
    for i := 1 to n do
        write(v[i]:0:1,' ');
    writeln();
end;

begin
    tam := 0;
    read(cod);

    while cod <> 0 do
    begin
        while (cod <> 1) and (cod <> 2) do
            read(cod);
        
        read(x);
        if cod = 1 then
        begin
            if tam < 200 then
            begin
                insere_no_vetor_ordenado(vetor, tam, x);
                imprime_vetor(vetor, tam);
            end
            else
                writeln('erro');
        end
        else
        begin
            if busca_no_vetor_ordenado(vetor, tam, x) <> 0 then
            begin
                remove_do_vetor_ordenado(vetor, tam, x);
                if tam > 0 then
                    imprime_vetor(vetor, tam)
                else
                    writeln('vazio');
            end
            else
                writeln('erro');
        end;

        read(cod);
    end;

    if tam > 0 then
        imprime_vetor(vetor, tam)
    else
        writeln('vazio');
end.