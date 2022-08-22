program plano_cartesiano;
var x, y: longint;
    
begin
    read(x, y);
    if (x = 0) and (y = 0) then
        write('O')
    else
        begin
        if x = 0 then
            write('Y')
        else if y = 0 then
            write('X')
        else if x > 0 then
            begin
            if y > 0 then
                write('1')
            else
                write('4');
            end
        else
            begin
            if y > 0 then
                write('2')
            else
                write('3');
            end;
        end;
end.
