program repeticao_em_matriz;
const MIN = 1; MAX = 100;
type matriz_i = array[MIN..MAX, MIN..MAX] of longint;

procedure le_matriz(var mat       : matriz_i;
                    numlin, numcol: longint);
var i, j: longint;
begin
    for i := 1 to numlin do
        for j := 1 to numcol do
            read(mat[i,j]);
end;

function busca(var mat                         : matriz_i;
               linI, colI, numlin, numcol, alvo: longint): boolean;
var i, j : longint;
begin
    busca := false;
    i := linI;
    j := colI;
    while (i <= numlin) and not(busca) do
    begin
        while (j <= numcol) and not(busca) do
        begin
            if mat[i,j] = alvo then
                busca := true;
            j := j + 1;
        end;
        i := i + 1;
        j := 1;
    end;
end;

procedure prox_posicao(numlin, numcol      : longint;
                       linAtu, colAtu      : longint;
                       var proxLin, proxCol: longint);
begin
    if colAtu = numcol then
    begin
        proxLin:= linAtu + 1;
        proxCol:= 1;
    end
    else
    begin
        proxLin:= linAtu;
        proxCol:= colAtu + 1;
    end;
end;

function tem_repetidos(var mat       : matriz_i;
                       numlin, numcol: longint): boolean;
var i, j, proxi, proxj: longint;
begin
    tem_repetidos := false;
    i := 1;
    while (i <= numlin) and not(tem_repetidos) do
    begin
        j := 1;
        while (j <= numcol) and not(tem_repetidos) do
        begin
            prox_posicao(numlin, numcol, i, j, proxi, proxj);
            tem_repetidos := busca(mat, proxi, proxj, numlin, numcol, mat[i,j]);
            j := j + 1;
        end;
        i := i + 1;
    end;
end;

var u   : matriz_i;
    m, n: longint;
begin
    read(m, n);
    le_matriz(u, m, n);

    if tem_repetidos(u, m, n) then writeln('sim')
    else writeln('nao');
end.