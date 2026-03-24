{Leer un carácter y almacenar en una variable booleana el valor true,  si es un carácter numérico, y el valor false 
en caso contrario. }

var
    c: char;
begin
    readln(c);
    if (c >= '0') and (c <= '9') then
        writeln('El carácter es numérico.');
    else
        writeln('El carácter no es numérico.');
end.