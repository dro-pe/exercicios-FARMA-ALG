program damas;
type tabuleiro = array [0..9,0..9] of integer;

function le_tabuleiro(): tabuleiro;
var i, j: integer;
begin
    for i := 0 to 9 do
        for j := 0 to 9 do
            le_tabuleiro[i,j] := 2; // facilita a comparacao na matriz

    for i := 1 to 8 do
        for j := 1 to 8 do
            read(le_tabuleiro[i,j]);
end; 

function estado(var d   : tabuleiro;
                lin, col: integer): integer;
begin
    estado := 0;
    if d[lin,col] = -1 then
    begin
        if (d[lin+1,col-1] = 1) or (d[lin+1,col+1] = 1) then
            estado := 1  // tomar
        else if (d[lin+1,col-1] = 0) or (d[lin+1,col+1] = 0) then
            estado := 2  // mover
        else
            estado := 3  // ficar
    end;
end;

procedure imprime_estado(var d: tabuleiro;
                         e    : integer);
var i, j, cont: integer;
begin
    cont := 0;
    for i := 1 to 7 do
        for j := 1 to 8 do
            if estado(d, i, j) = e then
            begin
                write(i,'-',j,' ');
                cont := cont + 1;
            end;
    if cont = 0 then
        write(0);
    writeln();
end;

var tab: tabuleiro;
begin
    tab := le_tabuleiro();
    write('tomar: ');
    imprime_estado(tab, 1);
    write('mover: ');
    imprime_estado(tab, 2);
    write('ficar: ');
    imprime_estado(tab, 3);
end.