program subsequencias;
const MIN = 1; MAX = 100
type vetor_i = array[MIN..MAX] of longint;

var v                           : vetor;
    n, pos, tamanho_subsequencia: longint;

procedure le_vetor(var w: vetor_i;
                   n    : longint);
var i: longint;
begin
    for i := 1 to n do
        read(w[i])
end;

function tem_subsequencias_iguais(var w     : vetor_i;
                                  n, tam_sub: longint): longint;
begin
    
end;
(*
recebe uma subsequencia "v" que em tamanho "n" e procura por subsequencias
iguais de tamanho "tam_sub". A funcao devolve zero se nao encontrou
subsequencias iguais ou devolve a posicao do inicio da primeira subsequencia
que encontrou.
*)

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
        writeln (pos,' ',tamanho_subsequencia+1)
    else
        writeln ('nenhuma');
end.