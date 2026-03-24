program Ejercicio_4; 

procedure suma(num1: integer; num2:integer); 
begin 
    num2 := num1 + num2; 
    WriteLn('num1: ', num1, ' num2: ', num2);
    num1 := 0; 
    num1 := 1110; 
end; 
var 
  i, x: integer; 
begin 
  read(x); { leo la variable x } 
  for i:= 1 to 5 do 
    suma(i,x);
    i:= 0; { modifico la variable i } 
  write(x); { imprimo las variable x } 
end. 
--Illegal assignment to for-loop variable "i"
--Estás modificando la variable del for (i) dentro del procedimiento.
