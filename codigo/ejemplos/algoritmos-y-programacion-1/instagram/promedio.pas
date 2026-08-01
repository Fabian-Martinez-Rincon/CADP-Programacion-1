program PromedioPorFila;

const
  f = 3;
  c = 4;

type
  matriz = array[1..f, 1..c] of integer;

var
  m: matriz;

{---------------------------------------------}
procedure cargarMatriz(var m: matriz);
var
  i, j: integer;
begin
  for i := 1 to f do
    for j := 1 to c do
    begin
      write('Ingrese valor [', i, ',', j, ']: ');
      readln(m[i,j]);
    end;
end;

{---------------------------------------------}
procedure imprimirMatriz(m: matriz);
var
  i, j: integer;
begin
  writeln('--- MATRIZ ---');
  for i := 1 to f do
  begin
    for j := 1 to c do
      write(m[i,j]:4);
    writeln;
  end;
end;

{---------------------------------------------}
procedure promedioPorFila(m: matriz);
var
  i, j: integer;
  suma: integer;
  promedio: real;
begin
  writeln('--- PROMEDIOS POR FILA ---');

  for i := 1 to f do
  begin
    suma := 0;
    for j := 1 to c do
      suma := suma + m[i,j];
    promedio := suma / c;

    writeln('Fila ', i, ' -> Promedio: ', promedio:0:2);
  end;
end;

{---------------------------------------------}
begin
  cargarMatriz(m);
  imprimirMatriz(m);
  promedioPorFila(m);
end.