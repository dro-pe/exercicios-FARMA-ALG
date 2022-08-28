program media_alunos;
var i, n, p1, p2, p3, media: longint;

function media_ponderada_pesos_1_2_3(a, b, c: longint): longint;
begin
    media_ponderada_pesos_1_2_3 := (a + 2*b + 3*c) div 6;
end;

function aprovado(media_provas: longint): boolean;
begin
    aprovado := true;
    if media_provas < 50 then
        aprovado := false; 
end;

begin
    read(n);
    for i:= 1 to n do
    begin
        read(p1, p2, p3);
        media:= media_ponderada_pesos_1_2_3(p1, p2, p3);
        if aprovado(media) then
            writeln('aluno ',i,' aprovado com media: ', media)
        else
            writeln('aluno ',i,' reprovado com media: ', media);
    end;
end.