program calcula_tangente;
const TERMOS = 6;
var angulo, tg: real;

(* funcao que calcula o seno *)
function seno(x: real): real;
var soma, num: real;
    den, sinal, i, n: longint;
begin
    soma := 0;
    num := x;
    den := 1;
    sinal := 1;
    n := 2;

    for i := 1 to TERMOS do
    begin
        soma := soma + (sinal*num/den);
        num := num*x*x;
        den := den*n*(n+1);
        sinal := -sinal;
        n := n + 2;
    end;

    seno := soma
end;

(* funcao que calcula o cosseno *)
function cosseno(x: real): real;
var soma, num: real;
    den, sinal, i, n: longint;
begin
    soma := 1;
    num := x*x;
    den := 2;
    sinal := -1;
    n := 3;

    for i := 1 to (TERMOS - 1) do
    begin
        soma := soma + (sinal*num/den);
        num := num*x*x;
        den := den*n*(n+1);
        sinal := -sinal;
        n := n + 2;
    end;

    cosseno := soma
end;

(* funcao que calcula a tangente *)
function existe_tangente(x: real; var tangente: real): boolean;
begin
    if cosseno(x) = 0 then
        existe_tangente := false
    else
    begin
        existe_tangente := true;
        tangente := seno(x)/cosseno(x);
    end;
end;

begin
    read (angulo);
    if existe_tangente(angulo, tg) then
        writeln(tg:0:3)
    else
        writeln('nao existe tangente de ',angulo:0:5);
end.