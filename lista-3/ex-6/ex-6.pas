program media_ponderada;
var n, somanp, mediapond: real;
    p, somap: longint;
    
begin
    somanp := 0;
    somap := 0;
    read(n, p);
    
    while (n <> 0) or (p <> 0) do
    begin
        somanp := somanp + n*p;
        somap := somap + p;
        read(n, p);
    end;
    
    mediapond := somanp/somap;
    write(mediapond:0:2);
end.
