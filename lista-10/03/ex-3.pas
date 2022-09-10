program palavras_cruzadas;
const MIN = 1; MAX = 100;
type matriz_i = array [MIN..MAX,MIN..MAX] of integer;

procedure le_matriz(var u         : matriz_i;
                    numlin, numcol: integer);
var i, j: integer
begin
    for i := 1 to numlin do
        for j := 1 to numcol do
            read(u[i,j]);
end;

var m, n: integer;
    mat : matriz_i;
begin
    read(m, n);
    le_matriz(u, m, n);
end.