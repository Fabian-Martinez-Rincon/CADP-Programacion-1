{Ejemplo suelto de Instagram (FaboSistemas), el más simple del catálogo: una función Sumar y un
procedimiento Saludar, cada uno invocado una sola vez desde el programa principal.}

program Ejemplo;

function Sumar(a, b: Integer): Integer;
begin
    Sumar := a + b;
end;

procedure Saludar(nombre: String);
begin
    WriteLn('Hola, ', nombre);
end;

begin
    { Programa principal }
    WriteLn('Resultado: ', Sumar(5, 3));
    Saludar('Fabian');
    ReadLn;
end.