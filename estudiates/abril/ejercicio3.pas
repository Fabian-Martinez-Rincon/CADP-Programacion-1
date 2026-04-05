program valorDoble;
var
    x: real;
    y: real;
    esDoble: boolean;
begin
    writeln('Ingrese un numero:');
    ReadLn(x);
    esDoble := false;
    while not esDoble do
    begin
        writeln('Ingrese otro numero:');
        ReadLn(y);
        if y = 2 * x then
        begin
            esDoble := true;
            writeln('El numero ', y:0:2, ' es el doble de ', x:0:2);
        end
    end;
    
end.