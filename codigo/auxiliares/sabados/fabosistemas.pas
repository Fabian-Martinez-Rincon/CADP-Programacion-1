unit fabosistemas;

interface

procedure Header;
procedure Separador(Titulo: string);
procedure Resultado(Titulo: string; Valor: integer);
procedure Footer;

implementation

uses crt;

procedure Header;
begin
    clrscr;
    textbackground(0);

    textcolor(14);
    writeln('==================================================');

    textcolor(12);
    writeln('                 FABOSISTEMAS');

    textcolor(14);
    writeln('==================================================');

    textcolor(8);
    writeln(' Clases Particulares de CADP | @fabosistemas');

    textcolor(7);
    writeln('--------------------------------------------------');
    writeln;
end;

procedure Separador(Titulo: string);
begin
    textcolor(11);
    writeln;
    writeln('> ', Titulo);
    writeln('----------------------------------------');
    textcolor(7);
end;

procedure Resultado(Titulo: string; Valor: integer);
begin
    writeln;
    textcolor(10);
    writeln('>>> ', Titulo, ': ', Valor);
    textcolor(7);
end;

procedure Footer;
begin
    writeln;
    textcolor(8);
    writeln('==================================================');

    textcolor(11);
    writeln(' Fabosistemas | +54 221 3529440');

    textcolor(8);
    writeln('==================================================');

    textcolor(7);
end;

end.