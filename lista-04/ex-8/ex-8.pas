program queissocara;
var i, j, k: longint;

begin
    read(i, j, k);
    
    if (j mod i = 0) and (k mod j = 0) then
        write(i + j + k)
    else if (i + 1 = j) and (j + 1 = k) then
        write(k,' ',j,' ',i)
    else
        write(((i+j+k)/3):0:0);
end.
