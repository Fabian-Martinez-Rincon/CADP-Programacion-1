{Leer un carácter y almacenar en una variable booleana el valor true,  si es un carácter numérico, y el valor false 
en caso contrario. }
program ejercicio_2;
var
    c: char;
    esNumero: boolean;
begin
    Write('Ingrese un caracter: ');
    readln(c);
    esNumero := (c >= '0') and (c <= '9');

    if esNumero then
        writeln('El caracter es numerico.')
    else
        writeln('El caracter no es numerico.');
end.