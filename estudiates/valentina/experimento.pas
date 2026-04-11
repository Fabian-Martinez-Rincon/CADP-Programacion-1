program experimento;
type 
    limiteInferior = 1;
    limiteSuperior = 10;
    nuevoTipo = limiteInferior .. limiteSuperior;
var
    numero: nuevoTipo;
begin
    WriteLn('Ingrese un numero entre 1 y 10:');
    ReadLn(numero);
    WriteLn('El numero ingresado es: ', numero);
end.