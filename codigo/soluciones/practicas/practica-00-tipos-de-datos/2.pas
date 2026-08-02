// El nombre de archivo (2.pas) sugiere el Ejercicio 2 de la Práctica 0 ("Modifique el programa anterior
// para que el mensaje de salida muestre la suma de ambos números: a. Utilizando una variable adicional
// b. Sin utilizar una variable adicional"), pero el código no lo resuelve: declara num1, num2: Real fijos
// en 10 y 5, e intenta Writeln(num1 div num2) / Writeln(num1 mod num2), comentados por el propio autor
// como "No se puede :D" — div/mod no existen entre reales en Pascal; no compila (Error: Operator is not
// overloaded: "Real" div "Real" / "Real" mod "Real"). Parece un experimento aparte sobre estos operadores.

program ocho;
var
    num1:Real;
	num2:Real;
begin
	num1:=10;
	num2:=5;
	Writeln(num1 div num2); // No se puede :D
	Writeln(num1 mod num2); // No se puede :D
end.

