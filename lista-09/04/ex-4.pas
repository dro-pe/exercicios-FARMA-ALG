program permutacao_em_matriz;
const MIN = 1; MAX = 100;
type vetor_i = array[MIN..MAX] of longint;
type matriz_i = array[MIN..MAX,MIN..MAX] of longint;

function soma_vetor(var w: vetor_i;
                    tam  : longint): longint;
var i: longint;
begin
    soma_vetor := 0;
    for i := 1 to tam do
        soma_vetor := soma_vetor + w[i];
end;

function soma_coluna(var mat    : matriz_i;
                     col, numlin: longint): longint;
var i: longint;
begin
    soma_coluna := 0;
    for i := 1 to numlin do
        soma_coluna := soma_coluna + mat[i,col];
end;

procedure le_matriz(var mat       : matriz_i;
                    numlin, numcol: longint);
var i, j: longint;
begin
    for i := 1 to numlin do
        for j := 1 to numcol do
            read(mat[i,j]);
end;

function matriz_binaria(var mat       : matriz_i;
                        numlin, numcol: longint): boolean;
var i, j: longint;
begin
    i := 1;
    matriz_binaria := true;
    while (i <= numlin) and matriz_binaria do
    begin
        j := 1;
        while (j <= numcol) and matriz_binaria do
        begin
            if (mat[i,j] <> 0) and (mat[i,j] <> 1) then
                matriz_binaria := false;
            j := j + 1;
        end;
        i := i + 1;
    end;
end;

function linhas_validas(var mat       : matriz_i;
                        numlin, numcol: longint): boolean;
var i: longint;
begin
    i := 1;
    linhas_validas := true;
    while (i <= numlin) and linhas_validas do
    begin
        if soma_vetor(mat[i], numcol) <> 1 then
            linhas_validas := false;
        i := i + 1;
    end;
end;

function colunas_validas(var mat       : matriz_i;
                         numlin, numcol: longint): boolean;
var i: longint;
begin
    i := 1;
    colunas_validas := true;
    while (i <= numcol) and colunas_validas do
    begin
        if soma_coluna(mat, i, numlin) <> 1 then
            colunas_validas := false;
        i := i + 1;
    end;
end;

var u: matriz_i;
    n: longint;
begin
    read(n);
    if n > 0 then
    begin
        le_matriz(u, n, n);
        if not(matriz_binaria(u, n, n)) then
            writeln('nao')
        else
        begin
            if linhas_validas(u, n, n) and colunas_validas(u, n, n) then
                writeln('sim')
            else
                writeln('nao');
        end;
    end
    else writeln('nao');
end.