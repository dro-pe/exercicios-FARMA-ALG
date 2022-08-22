program arranjos;
var n, a, b: longint;

begin
    read(n);
    a := 1;
    
    while a < n do
    begin
        b := n - a;
        writeln(a,' ',b);
        a := a + 1;
    end;
end.
