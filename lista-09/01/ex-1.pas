program matriz_triangular;
const MIN = 1; MAX = 100;
type matriz_i = array[MIN..MAX,MIN..MAX] of longint;

procedure le_matriz(var mat : matriz_i;
                    lin, col: longint);
var i, j: longint;
begin
    for i := 1 to lin do
        for j := 1 to col do
            read(mat[i,j]);
end;

function eh_triangular_superior(var mat: matriz_i;
                                q      : longint): boolean;
var i, j    : longint;
var l_valida: boolean;
begin
    eh_triangular_superior := false;
    l_valida := true;
    i := 2;
    while (i <= q) and (l_valida) do
    begin
        j := 1;
        while (j < i) and (mat[i,j] = 0) do
            j := j + 1;
        if j < i then
            l_valida := false;
        i := i + 1;
    end;
    if i > q then
        eh_triangular_superior := true;
end;

function eh_triangular_inferior(var mat: matriz_i;
                                q      : longint): boolean;
var i, j    : longint;
var l_valida: boolean;
begin
    eh_triangular_inferior := false;
    l_valida := true;
    i := 1;
    while (i < q) and (l_valida) do
    begin
        j := 2;
        while (j <= q) and (mat[i,j] = 0) do
            j := j + 1;
        if j <= q then
            l_valida := false;
        i := i + 1;
    end; 
    if i = q then
        eh_triangular_inferior := true;
end;

var n: longint;
    u: matriz_i;
begin
    read(n);
    le_matriz(u, n, n);

    if eh_triangular_superior(u, n) then
        writeln('sim')
    else
        if eh_triangular_inferior(u, n) then
            writeln('sim')
        else
            writeln('nao');
end.