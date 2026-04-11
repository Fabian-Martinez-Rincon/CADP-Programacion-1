program Fabosistemas;

type
  alumno = record
    nombre: string;
    esfuerzo: boolean;
    practica: boolean;
    aprobado: boolean;
  end;

var
  a: alumno;

begin
  a.nombre := 'Vos';
  a.esfuerzo := true;
  a.practica := true;

  if a.esfuerzo and a.practica then
    a.aprobado := true
  else
    a.aprobado := false;

  if a.aprobado then
    writeln('Aprobas CADP y AyP1 con Fabosistemas')
  else
    writeln('Segui intentando, estas cada vez mas cerca');

  writeln('El proceso tambien es aprendizaje');
end.