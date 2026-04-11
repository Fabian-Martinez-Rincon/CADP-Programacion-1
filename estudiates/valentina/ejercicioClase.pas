program dos;
type
    stringPeronalizado = 'ac';
    notas = -1..10;

const
    cantTidadAlumnos = 3;
var
    numeroAlumno:integer;
    nota:notas;
    i:integer;
    mejorNota1:notas;
    mejorNumero1:integer;
    mejorNota2:notas;
    mejorNumero2:integer;
begin
    mejorNumero1 := -1;
    mejorNota1 := -1;
    mejorNumero2 := -1;
    mejorNota2 := -1;
    for i := 1 to cantTidadAlumnos do
    begin
        WriteLn('Ingrese el numero del alumno ', i, ':');
        ReadLn(numeroAlumno);
        WriteLn('Ingrese la nota del alumno ', i, ':');
        ReadLn(nota);
        if nota > mejorNota1 then
        begin
            mejorNota2 := mejorNota1;
            mejorNumero2 := mejorNumero1;
            mejorNota1 := nota;
            mejorNumero1 := numeroAlumno;
        end
        else if nota > mejorNota2 then
        begin
            mejorNota2 := nota;
            mejorNumero2 := numeroAlumno;
        end;
    end;
    WriteLn('El alumno con la mejor nota es: ', mejorNumero1);
    WriteLn('La mejor nota es: ', mejorNota1);
    WriteLn('El alumno con la segunda mejor nota es: ', mejorNumero2);
    WriteLn('La segunda mejor nota es: ', mejorNota2);
end.