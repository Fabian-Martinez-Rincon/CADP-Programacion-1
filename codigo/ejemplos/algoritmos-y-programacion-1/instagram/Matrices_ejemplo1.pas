program Matrices_ejemplo1;
const
  f = 3; //Filas
  c = 3; //Columnas
type
  matriz = array[1..f, 1..c] of integer;
var
  m: matriz;

procedure ImprimirMatriz(mat: matriz);
  var
    i, j: integer;
  begin
    for i := 1 to f do
    begin
      for j := 1 to c do
        write(mat[i,j]:4);
      writeln;
    end;
  end;

procedure ImprimirInvertido(mat: matriz);
var
  i, j: integer;
begin
  for j := 1 to c do
  begin
    for i := 1 to f do
      write(mat[i,j]:4);
    writeln;
  end;
end;

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

procedure cargarRandom(var m: matriz);
var
  i, j: integer;
begin
  randomize;  { IMPORTANTE }

  for i := 1 to f do
    for j := 1 to c do
      m[i,j] := random(100); { números entre 0 y 99 }
end;

begin
  cargarRandom(m);
  ImprimirMatriz(m);
end.