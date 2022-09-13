program quadrado_magico_1;
const MIN = 1; MAX = 100;
type vetor_i = array [MIN..MAX] of integer;
type matriz_i = array [MIN..MAX] of vetor_i;

procedure le_quadrada(var u: matriz_i;
                      tam  : integer);
var i, j: integer;
begin
    for i := 1 to tam do
        for j := 1 to tam do
            read(u[i,j]);
end;

function soma_linha(var w: vetor_i;
                    tam  : integer): integer;
var i, soma: integer;
begin
    soma := 0;
    for i := 1 to tam do
        soma := soma + w[i];
    soma_linha := soma;
end;

function soma_coluna(var u   : matriz_i;
                     col, tam: integer): integer;
var i, soma: integer;
begin
    soma := 0;
    for i := 1 to tam do
        soma := soma + u[i, col];
    soma_coluna := soma;
end;

function soma_diagonalP(var u: matriz_i;
                        tam  : integer): integer;
var i, soma: integer;
begin
    soma := 0;
    for i := 1 to tam do
        soma := soma + u[i,i];
    soma_diagonalp := soma;
end;

function soma_diagonalS(var u: matriz_i;
                        tam  : integer): integer;
var i, j, soma: integer;
begin
    soma := 0;
    j := tam;
    for i := 1 to tam do
    begin
        soma := soma + u[i,j];
        j := j - 1;
    end; 
    soma_diagonalS := soma;
end;

function eh_q_magico(var u: matriz_i;
                     tam  : integer): boolean;
var s, i, j: integer;
begin
    s := soma_linha(u[1], tam);
    eh_q_magico := false;

    if (soma_diagonalP(u, tam) = s) and (soma_diagonalS(u, tam) = s) then
    begin
        i := 1;
        while (i <= tam) and (soma_linha(u[i], tam) = s) do
            i := i + 1;
            
        if i > tam then
        begin
            j := 1;
            while (j <= tam) and (soma_coluna(u, j, tam) = s) do
                j := j + 1;

            if j > tam then
                eh_q_magico := true;
        end;
    end;
end;

var q: matriz_i;
    n: integer;
begin
    read(n);
    le_quadrada(q, n);

    // writeln(soma_coluna(q, 3, n));
    if eh_q_magico(q, n) then
        writeln('sim')
    else
        writeln('nao');
end.