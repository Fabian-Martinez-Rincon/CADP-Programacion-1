{Ejemplo suelto de Instagram (FaboSistemas): variante de CaseDemo.pas que muestra cómo agrupar más de una
instrucción dentro de una misma rama de un case usando begin...end.}

program varias_instrucciones;

var
  opcion: integer;
begin
  opcion := 2;

  case opcion of
    1:
        begin
        writeln('Opcion 1');
        writeln('Primer caso');
        end;

    2:
        begin
        writeln('Opcion 2');
        writeln('Segundo caso');
        end;
    end;
end.