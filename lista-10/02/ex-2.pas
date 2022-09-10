program equacoes_lineares_com_matrizes;
const MIN = 1; MAX = 100;
type vetor_i = array[MIN..MAX] of integer;
type matriz_i = array[MIN..MAX] of vetor_i;

procedure le_vetor(var w: vetor_i;
                   tam  : integer);
var i: integer;
begin
    for i := 1 to tam do
        read(w[i]);
end;

procedure le_matriz(var u         : matriz_i;
                    numlin, numcol: integer);
var i, j: integer;
begin
    for i := 1 to numlin do
        for j := 1 to numcol do
            read(u[i,j]);
end;

function solucao_igual(var u          : matriz_i;
                       var teste, alvo: vetor_i;
                       numlin, numcol : integer):boolean;
var i, j, soma: integer;
begin
    solucao_igual := true;
    i := 1;
    while (i <= numlin) and solucao_igual do
    begin
        soma := 0;

        for j := 1 to numcol do
        begin
            soma := soma + u[i,j]*teste[j];
        end;

        if soma <> alvo[i] then
            solucao_igual := false;
        
        i := i + 1;
    end;
end;

var m, n                 : integer;
    v_informado, lado_dir: vetor_i;
    sistema              : matriz_i;
begin
    read(m, n);
    le_vetor(v_informado, n);
    le_matriz(sistema, m, n);
    le_vetor(lado_dir, m);

    if solucao_igual(sistema, v_informado, lado_dir, m, n) then
        write('sim')
    else
        write('nao');
end.