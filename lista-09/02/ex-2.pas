program elementos_nulos;
const MIN = 1; MAX = 100;
type matriz_i = array[MIN..MAX, MIN..MAX] of longint;
type vetor_i = array[MIN..MAX] of longint;

procedure le_matriz(var mat : matriz_i;
                    lin, col: longint);
var i, j: longint;
begin
    for i := 1 to lin do
        for j := 1 to col do
            read(mat[i,j]);
end;

function linha_zero(var linha: vetor_i;
                    tam      : longint): boolean;
var i: longint;
begin
    linha_zero := false;
    i := 1;
    while (i <= tam) and (linha[i] = 0) do
        i := i + 1;
    if i > tam then
        linha_zero := true;
end;

function coluna_zero(var mat     : matriz_i;
                     coluna, tamc: longint): boolean;
var j: longint;
begin
    coluna_zero := false;
    j := 1;
    while (j <= tamc) and (mat[j, coluna] = 0) do
        j := j + 1;
    if j > tamc then
        coluna_zero := true;
end;

var u                    : matriz_i;
    m, n, k, somal, somac: longint;
begin
    read(m, n);
    le_matriz(u, m, n);
    somal := 0;
    somac := 0;

    for k := 1 to m do
        if linha_zero(u[k], n) then
            somal := somal + 1;

    for k := 1 to n do
        if coluna_zero(u, k, m) then
            somac := somac + 1;

    writeln('linhas: ',somal);
    writeln('colunas: ',somac);
end.