program palavras_cruzadas;
const MIN = 0; MAX = 100;
type matriz_i = array [MIN..MAX,MIN..MAX] of integer;

procedure inicia_jogo(var u         : matriz_i;
                      numlin, numcol: integer);
var i, j: integer;
begin
    for i := 0 to numlin+1 do
        for j := 0 to numcol+1 do
            u[i,j] := -1;

    for i := 1 to numlin do
        for j := 1 to numcol do
            read(u[i,j]);
end;

procedure imprime_matriz(var u         : matriz_i;
                         numlin, numcol: integer);
var i, j: integer;
begin
    for i := 1 to numlin do
    begin
        for j := 1 to numcol do
            write(u[i,j],' ');
        writeln();
    end;
end;

function eh_inicio(var u   : matriz_i;
                   lin, col: integer):boolean;
(*  
    para um dado elemento, verificar esquerda, cima, direita e baixo.

    se esquerda = -1 e direita <> -1 eh inicio de palavra
    se cima = -1 e baixo <> -1 eh inicio de palavra
*)
var e, c, d, b: integer;
begin
    e := u[lin , col-1];
    c := u[lin-1 , col];
    d := u[lin , col+1];
    b := u[lin+1 , col];

    if ((e = -1) and (d <> -1)) or ((c = -1) and (b <> -1)) then
        eh_inicio := true
    else
        eh_inicio := false;
end;

var m, n, i, j, cont: integer;
    mat : matriz_i;
begin
    cont := 0;
    read(m, n);
    inicia_jogo(mat, m, n);

    for i := 1 to m do
        for j := 1 to n do
            if mat[i,j] = 0 then
                if eh_inicio(mat, i, j) then
                begin
                    cont := cont + 1;
                    mat[i,j] := cont;
                end;

    imprime_matriz(mat, m, n);
end.