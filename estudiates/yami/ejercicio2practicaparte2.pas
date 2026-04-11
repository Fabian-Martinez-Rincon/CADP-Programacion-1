program buscarMayor;
const
    CANT_NUMEROS = 3; //10 numeros
var
    numero:integer;
    i:integer;
    numeroMayor:integer;
begin
    numeroMayor := -9999; //inicializo con un numero muy bajo para asegurarme de que cualquier numero ingresado sea mayor
    for i:= 1 to CANT_NUMEROS do
    begin
        writeln('Ingrese el numero ', i, ':');
        readln(numero);
        if numero > numeroMayor then
        begin
            numeroMayor := numero;
        end;
    end;
    writeln('El numero mayor ingresado es: ', numeroMayor);
end.