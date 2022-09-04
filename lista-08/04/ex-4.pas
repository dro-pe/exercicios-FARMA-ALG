program subsequencias;
const MIN = 1; MAX = 100;
type vetor_i = array[MIN..MAX] of longint;

procedure le_vetor(var w: vetor_i;
                   n    : longint);
var i: longint;
begin
    for i := 1 to n do
        read(w[i])
end;

function tem_subsequencias_iguais(var w     : vetor_i;
                                  tam_w, tam_sub: longint): longint;
var i, j, k, cont, fim, ultima_atribuicao: longint;
var sub                                  : vetor_i;
begin
    tem_subsequencias_iguais := 0;
    cont := 0;
    fim := tam_w - tam_sub + 1;
    ultima_atribuicao := fim - tam_sub;

    while (tem_subsequencias_iguais = 0) and (cont < ultima_atribuicao) do
    begin
        for i := 1 to tam_sub do
            sub[i] := w[i + cont];

        j := tam_sub;
        while (tem_subsequencias_iguais = 0) and (j < fim) do
        begin
            k := 1;
            while (k <= tam_sub) and (sub[k] = w[k + j + cont]) do
                k := k + 1;
            if k > tam_sub then
                tem_subsequencias_iguais := 1 + cont;
            
            j := j + 1;
        end;
        
        cont := cont + 1;
    end;  
end;

var v                           : vetor_i;
    n, pos, tamanho_subsequencia: longint;
begin
    read(n);
    le_vetor(v,n); 
    pos := 0;
    tamanho_subsequencia := n div 2; // inicia com maior valor possivel

    while (pos = 0) and (tamanho_subsequencia >= 2) do
    begin
        pos := tem_subsequencias_iguais(v,n,tamanho_subsequencia);
        tamanho_subsequencia := tamanho_subsequencia - 1;
    end;
    if pos > 0 then
        writeln (pos,' ',tamanho_subsequencia + 1)
    else
        writeln ('nenhuma');
end.