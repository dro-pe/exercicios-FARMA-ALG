program ordem_louca;
    var i: longint;
        a, b, c, maior, menor, meio: real;
        
    begin
        read(i,a,b,c);
        if a > b then
        begin
            if a > c then
            begin
                maior := a;
                if b > c then
                begin
                    meio := b;
                    menor := c;
                end
                else
                begin
                    meio := c;
                    menor := b;
                end;
            end
            else
            begin
                maior := c;
                meio := a;
                menor := b;
            end;
        end
        else
        begin
            if b > c then
            begin
                maior := b;
                if a > c then
                begin
                    meio := a;
                    menor := c;
                end
                else
                begin
                    meio := c;
                    menor := a
                end;
            end
            else
            begin
                maior := c;
                meio := b;
                menor := a;
            end;
        end;
    
        if i = 1 then
            writeln(menor:0:0,' ',meio:0:0,' ',maior:0:0)
        else if i = 2 then
            writeln(maior:0:0,' ',meio:0:0,' ',menor:0:0)
        else if i = 3 then
        begin
            if maior = a then
                writeln(b:0:0,' ',a:0:0,' ',c:0:0)
            else if maior = b then
                writeln(a:0:0,' ',b:0:0,' ',c:0:0)
            else
                writeln(a:0:0,' ',c:0:0,' ',b:0:0);
        end;
    end.
