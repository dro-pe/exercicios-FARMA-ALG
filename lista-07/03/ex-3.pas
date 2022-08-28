program vetores_003;
const MIN = 1; MAX = 200;
type vetor_i = array[MIN..MAX] of longint;
var vetor: vetor_i;
    n: longint;

procedure le_vetor(var v: vetor_i;
                   tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        read(v[i]);
end;

function eh_crescente(var v: vetor_i;
                      tam: longint): boolean;
var i: longint;
begin
    i := 1;
    eh_crescente := true;

    while (i < n) and (v[i] <= v[i + 1]) do
        i := i + 1; 
    if i < n then
        eh_crescente := false;
end;

procedure imprime_inverso(var v: vetor_i;
                        tam: longint);
var i: longint;
begin
    for i := tam downto 1 do
        write(v[i],' ');
    writeln();
end;

begin
    read(n);
    if n > 0 then
    begin
        le_vetor(vetor, n);
        if eh_crescente(vetor, n) then
            writeln('sim')
        else
            writeln('nao');
        imprime_inverso(vetor, n);
    end
    else
        writeln('vetor vazio');
end.