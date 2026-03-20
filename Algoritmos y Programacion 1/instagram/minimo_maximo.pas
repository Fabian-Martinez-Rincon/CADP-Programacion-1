program MaxMinMatriz;

const
  f = 3;
  c = 3;

type
  matriz = array[1..f, 1..c] of integer;

var
  m: matriz;

{----------------------------------}
procedure cargarRandom(var m: matriz);
var
  i, j: integer;
begin
  randomize;
  for i := 1 to f do
    for j := 1 to c do
      m[i,j] := random(100); { 0 a 99 }
end;

{----------------------------------}
procedure imprimirMatriz(m: matriz);
var
  i, j: integer;
begin
  writeln('Matriz:');
  for i := 1 to f do
  begin
    for j := 1 to c do
      write(m[i,j]:4);
    writeln;
  end;
end;

{----------------------------------}
procedure calcularMax(m: matriz);
var
  i, j: integer; max, fMax, cMax: integer;
begin
  max := m[1,1]; fMax := 1; cMax := 1;
  for i := 1 to f do
    for j := 1 to c do
      if m[i,j] > max then
      begin
        max := m[i,j]; fMax := i; cMax := j;
      end;
  writeln('Maximo: ', max, ' en [', fMax, ',', cMax, ']');
end;

procedure calcularMin(m: matriz);
var
  i, j: integer; min, fMin, cMin: integer;
begin
  min := m[1,1]; fMin := 1; cMin := 1;
  for i := 1 to f do
    for j := 1 to c do
      if m[i,j] < min then
      begin
        min := m[i,j]; fMin := i; cMin := j;
      end;
  writeln('Minimo: ', min, ' en [', fMin, ',', cMin, ']');
end;

{----------------------------------}
begin
  cargarRandom(m);
  imprimirMatriz(m);

  writeln;
  calcularMax(m);
  calcularMin(m);
end.