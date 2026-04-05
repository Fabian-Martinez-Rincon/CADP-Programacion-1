program Ejercicio7;

var
  c1, c2, c3: char;

function esVocal(c: char): boolean;
begin
  esVocal := (c = 'a') or (c = 'e') or (c = 'i') or (c = 'o') or (c = 'u');
end;

begin
  writeln('Ingrese tres caracteres:');
  readln(c1);
  readln(c2);
  readln(c3);

  if esVocal(c1) and esVocal(c2) and esVocal(c3) then
    writeln('Los tres son vocales')
  else
    writeln('Al menos un caracter no era vocal');

end.