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

function soma_diagonalp(var u: matriz_i;
                        tam  : integer): integer;
var i, soma: integer;
begin
    soma := 0;
    for i := 1 to tam do
        soma := soma + u[i,i];
    soma_diagonalp := soma;
end;

function soma_diagonals(var u: matriz_i;
                        tam  : integer): integer;
var i, j, soma: integer;
begin
    
end;

var q: matriz_i;
    n: integer;
begin
    read(n);
    le_quadrada(q, n);
end.