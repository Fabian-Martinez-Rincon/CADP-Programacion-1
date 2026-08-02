{Fragmento incompleto que no compila (Error: Identifier not found "cantPos", verificado con Free Pascal
3.2.2): la variable cantPos se usa pero nunca se declara, y num nunca se lee antes de evaluarla. Es, más
que un programa completo, el fragmento idiomático "contador condicional"
(if condición then contador := contador + 1) tal como suele mostrarse recortado en una publicación de
Instagram de FaboSistemas; se documenta tal cual está en el repositorio, sin completarlo.}

program basico;
var
  i, num, suma: integer;
begin
    if num > 0 then
        cantPos := cantPos + 1;
end.