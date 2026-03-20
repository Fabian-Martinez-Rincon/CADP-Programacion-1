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