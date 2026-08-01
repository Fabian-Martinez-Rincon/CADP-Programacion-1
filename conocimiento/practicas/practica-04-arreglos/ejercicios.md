---
id: "CADP-P04-EJERCICIOS"
titulo: "Ejercicios - Práctica 4 - Vectores"
slug: "practica-04-ejercicios"
tipo: "ejercicio"
unidad: 4
tema: "arreglos"
subtemas:
  - "vectores"
  - "corte-de-control"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-04-arreglos/Redictado CADP 2020 - Práctica 4 - Vectores.pdf"
    paginas: "1-4"
prerrequisitos:
  - "./teoria.md"
relacionados:
  - "./teoria.md"
  - "./ejemplos.md"
  - "../practica-repaso-redictado-2020/ejercicios-practica-04.md"
codigo_relacionado:
  - "../../../codigo/soluciones/practicas/practica-04-arreglos/"
---

# Ejercicios - Práctica 4 - Vectores

Enunciados transcritos textualmente de `Redictado CADP 2020 - Práctica 4 - Vectores.pdf` (páginas 1-4). Cada ejercicio enlaza su solución real en `codigo/soluciones/practicas/practica-04-arreglos/` y expresa su `estado` según los valores normalizados (`sin-solucion`, `resuelto`, `parcial`, `posiblemente-incorrecto`, `ambiguo`, `no-verificable`).

> [!NOTE]
> **Validación real ejecutada**: los 19 archivos `.pas` de esta carpeta se compilaron con Free Pascal 3.2.2 (`fpc -Se1`), sin ejecutar ningún programa (habría requerido preparar entradas por teclado para cada caso) y sin modificar el código fuente. Los resultados de compilación citados abajo son reales, no supuestos.

## Ejercicio 1

> Dado el siguiente programa: a) ¿Qué valores toma la variable `numeros` al finalizar el primer bloque `for`? b) Al terminar el programa, ¿con qué valores finaliza la variable `números`? c) Si se desea cambiar la línea 11 por la sentencia `for i:=1 to 9 do` ¿Cómo debe modificarse el código para que la variable `números` contenga los mismos valores que en 1.b)? d) ¿Qué valores están contenidos en la variable `numeros` si la líneas 11 y 12 se reemplazan por: `for i:=1 to 9 do  numeros[i+1] := numeros[i];`

- **Solución**: [`1.pas`](../../../codigo/soluciones/practicas/practica-04-arreglos/1.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Enfoque**: respuestas en comentario al inicio del archivo (a: 10, b: 55, c: sumar 10 al finalizar, d: 10 y 1) más un programa que reproduce el primer y segundo bloque `for` con `WriteLn` para verificar los valores.

## Ejercicio 2

> Dado el siguiente programa, complete las líneas indicadas, considerando que: a) El módulo `cargarVector` debe leer números reales y almacenarlos en el vector que se pasa como parámetro [...] La lectura finaliza cuando se ingresa el valor 0 [...] o cuando el vector está completo. b) El módulo `modificarVectorySumar` debe devolver el vector con todos sus elementos incrementados con el valor `n` y también debe devolver la suma de todos los elementos del vector.

- **Solución**: [`2.pas`](../../../codigo/soluciones/practicas/practica-04-arreglos/2.pas)
- **Estado**: `sin-solucion`
- **Enfoque**: el archivo conserva el programa tal como lo da el enunciado (con los placeholders `. . . { completar }` sin reemplazar) y usa `sumaTotal` sin declarar. Falla la compilación (`Fatal: Syntax error, "identifier" expected but "." found`, línea 17). No se completaron los módulos pedidos.

## Ejercicio 3

> Se dispone de un vector con números enteros, de dimensión física `dimF` y dimensión lógica `dimL`. a) [...] imprima el vector desde la primera posición hasta la última. b) [...] desde la última posición hasta la primera. c) [...] desde la mitad (`dimL DIV 2`) hacia la primera posición, y desde la mitad más uno hacia la última posición. d) [...] reciba el vector, una posición X y otra posición Y, e imprima el vector desde la posición X hasta la Y [...] podría ser necesario recorrer hacia adelante o hacia atrás. e) Utilizando el módulo implementado en el inciso anterior, vuelva a realizar los incisos a, b y c.

- **Solución**: [`3.pas`](../../../codigo/soluciones/practicas/practica-04-arreglos/3.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Enfoque**: `primera_ultima`, `ultima_primera`, `mitad_primera`, `mitad_ultima` para a-c, y `recibe_X_Y` para d) con una rama `if x<y` (recorrido ascendente) / `else` (descendente). No reutiliza `recibe_X_Y` para volver a resolver a/b/c como pide e); son procedimientos separados que logran el mismo resultado.

## Ejercicio 4

> Se dispone de un vector con 100 números enteros. Implementar los siguientes módulos: a) `posicion` [...] b) `intercambio` [...] c) `sumaVector` [...] d) `promedio` [...] e) `elementoMaximo` [...] f) `elementoMinimo` [...]

- **Solución**: [`4.pas`](../../../codigo/soluciones/practicas/practica-04-arreglos/4.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Enfoque**: `Econtrar_posicion`, `intercambio`, `sumaVector`, `promedio_calcular`, `maximo`, `minimo`. La carga (`Cargar`) llena el vector con `1..100` en vez de leer de teclado, así que las pruebas quedan fijas a esos datos.

## Ejercicio 5

> Utilizando los módulos implementados en el ejercicio 3, realizar un programa que lea números enteros desde teclado (a lo sumo 100) [...] La carga finaliza al leer el número 0. Al finalizar la carga, se debe intercambiar la posición del mayor elemento por la del menor elemento, e informe la operación realizada [...]

- **Solución**: [`5.pas`](../../../codigo/soluciones/practicas/practica-04-arreglos/5.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Enfoque**: un único módulo `leer_numeros` carga el vector y va actualizando máximo/mínimo y sus posiciones en la misma pasada, y al final intercambia esas dos posiciones e imprime el mensaje pedido. No reutiliza los módulos del ejercicio 3 (la consigna lo sugiere, no lo exige estrictamente).

## Ejercicio 6

> Dado que en la solución anterior se recorre dos veces el vector (una para calcular el elemento máximo y otra para el mínimo), implementar un único módulo que recorra una única vez el vector y devuelva ambas posiciones.

- **Solución**: [`6.pas`](../../../codigo/soluciones/practicas/practica-04-arreglos/6.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Enfoque**: el archivo es una copia idéntica de `5.pas`. Como `leer_numeros` ya actualizaba máximo y mínimo en una sola pasada, la consigna del ejercicio 6 queda satisfecha por construcción, aunque no hay una versión diferenciada que lo remarque.

## Ejercicio 7

> Realizar un programa que resuelva los siguientes incisos: a) Lea nombres de alumnos y los almacene en un vector de a lo sumo 500 elementos. La lectura finaliza cuando se lee el nombre 'ZZZ', que no debe procesarse. b) Lea un nombre y elimine la primera ocurrencia de dicho nombre en el vector. c) Lea un nombre y lo inserte en la posición 4 del vector. d) Lea un nombre y lo agregue al vector. Nota: Realizar todas las validaciones necesarias.

- **Solución**: [`7.pas`](../../../codigo/soluciones/practicas/practica-04-arreglos/7.pas)
- **Estado**: `posiblemente-incorrecto` (compila, pero b) y c) no hacen lo que pide el enunciado)
- **Enfoque real**: `leer_alumno` resuelve a) y `agregar` resuelve d). Para b) y c) el código define `Sustituir_primero` y `Sustituir_cuarto`, que **reemplazan** el valor en la posición 1 y 4 respectivamente, en lugar de *eliminar* la primera ocurrencia (b) o *insertar corriendo el resto del vector* en la posición 4 (c).
- **Borrador previo** (`fuentes/practicas/practica-04-arreglos/7.txt`, nota suelta real del alumno, transcripta tal cual):
  ```
  mientras contador < 500 o arreglo <> 'ZZZ'
   leer_alumno

  SustituirPrimerNombre
  SustituirCuartoNombre
  AgregarNombre
  ```
  El planteo original ya usaba "sustituir" en vez de "eliminar"/"insertar", así que la discrepancia con el enunciado viene desde la etapa de diseño, no es un error de tipeo posterior.

## Ejercicio 8

> Realizar un programa que lea y almacene la información de 400 alumnos ingresantes a la Facultad de Informática de la UNLP en el año 2020. De cada alumno se lee: nro de inscripción, DNI, apellido, nombre y año de nacimiento. Una vez leída y almacenada toda la información, calcular e informar: a) El porcentaje de alumnos con DNI compuesto sólo por dígitos pares. b) Apellido y nombre de los dos alumnos de mayor edad.

- **Solución**: [`8.pas`](../../../codigo/soluciones/practicas/practica-04-arreglos/8.pas)
- **Estado**: `parcial`
- **Enfoque**: `leer_alumnos` + `leer_datos` cargan el vector; `digPares` intenta contar los alumnos con DNI todo par pero **reinicia** `DNI_pares` a `0` apenas encuentra un dígito impar en vez de simplemente no incrementar el contador — el resultado final (`promedio:=DNI_pares/dimL`) no calcula el porcentaje pedido en a). El inciso b) calcula `alumno_mayor`/`alumno_segundo_mayor` en `alumnos_mayores` pero el programa principal nunca imprime esos dos alumnos.
- **Nota**: en `fuentes/practicas/practica-04-arreglos/8.txt` hay un boceto de estructura de datos (`proyecto`/`persona`/`docente_cordinador`/`nombre_escuela`) que **no corresponde** al enunciado de este ejercicio (no hay proyectos escolares en la Práctica 4). Es una nota suelta de otro ejercicio no identificable con las fuentes disponibles; se deja constancia de su existencia sin forzar una relación que no se puede verificar.
- **Referencia correcta del mismo patrón**: la imagen [`codigo-funcion-descomponer-dni.png`](../../../recursos/imagenes/practicas/practica-04-arreglos/codigo-funcion-descomponer-dni.png) (en la misma carpeta de recursos, sin enunciado propio asociado) trae una función completa y correcta para exactamente este sub-problema ("¿son todos los dígitos de un DNI pares?"), que sí decrementa correctamente y no reinicia nada:
  ```Pas
  function descomponer (dni: longint):boolean; {Analizo el DNI digito por digito para ver si son todos numeros pares/impares}
  var
    dig: integer;
  begin
    ok:=true;
    while (dni <> 0) and (ok=true)do begin
      dig:= dni MOD 10;
      if ((dig MOD 2)=1) then   --> 0:par  1:impar
        ok=false
      else
        dni:= dni DIV 10;
    end;
    descomponer:=ok;
  end;
  ```
  > [!WARNING]
  > Transcripto tal cual la imagen, incluyendo dos detalles que no compilarían sin corregir: `ok` no está declarada en el `var` de este fragmento (se usa como si fuera global) y `ok=false` dentro del `while` está usando `=` de comparación en vez de `:=` de asignación. Aun con esos dos detalles, la **lógica** que propone —cortar el `while` ni bien aparece un dígito impar, y sólo avanzar (`div 10`) cuando el dígito actual es par— es la forma correcta de resolver "son todos los dígitos pares", y es más simple que el `digPares` efectivamente usado en `8.pas`/`9.pas`.

## Ejercicio 9

> Modificar la solución del punto anterior considerando que el programa lea y almacene la información de a lo sumo 400 alumnos. La lectura finaliza cuando se ingresa el DNI -1 (que no debe procesarse).

- **Solución**: [`9.pas`](../../../codigo/soluciones/practicas/practica-04-arreglos/9.pas)
- **Estado**: `parcial` (mismas observaciones que el ejercicio 8)
- **Enfoque**: agrega el corte por DNI `-1` en `leer_datos`/`leer_alumnos` (con `dimL` como parámetro `var`); conserva el mismo `digPares` con la inconsistencia ya señalada y el mismo inciso b) sin imprimir.

## Ejercicio 10

> Realizar un programa que lea y almacene el salario de los empleados de una empresa de turismo (a lo sumo 300 empleados). La carga finaliza cuando se lea el salario 0 [...] o cuando se completa el vector. Una vez finalizada la carga de datos se pide: a) [...] incremente el salario de cada empleado en un 15% [...] b) [...] muestre en pantalla el sueldo promedio de los empleados de la empresa.

- **Solución**: [`10.pas`](../../../codigo/soluciones/practicas/practica-04-arreglos/10.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Enfoque**: `leer_salarios` carga hasta 0 o hasta `dimF`; `aumentar_salarios` multiplica cada elemento por la constante `aumento=1.15`; `Promedio_empresa` calcula e imprime el promedio.

## Ejercicio 11

> El colectivo de fotógrafos ArgenPics desea conocer los gustos de sus seguidores en las redes sociales [...] para cada una de las 200 fotos [...] título de la foto, el autor de la foto, cantidad de Me gusta, cantidad de clics y cantidad de comentarios de usuarios [...] a) Título de la foto más vista (la que posee mayor cantidad de clics). b) Cantidad total de Me gusta recibidas a las fotos cuyo autor es el fotógrafo "Art Vandelay". c) Cantidad de comentarios recibidos para cada una de las fotos publicadas en esa página.

- **Solución**: [`11.pas`](../../../codigo/soluciones/practicas/practica-04-arreglos/11.pas)
- **Estado**: `parcial` — no compila (`Error: Operator is not overloaded: "publicacion" = "publicacion"`, línea 86)
- **Enfoque**: `Mas_vistas` resuelve a) y `Total_megustas` resuelve b). El inciso c) (`cant_coment_publicidad`) intenta comparar dos registros completos con `=` (`todas_fotos[i]=todas_fotos[j]`), algo que Pascal no permite directamente; el propio comentario del autor lo reconoce: *"queria que cuando lea el primer se compare con todo el arreglo hasta que sea verdad pero no me salio"*.

## Ejercicio 12

> Una empresa de transporte de caudales desea optimizar el servicio que brinda a sus clientes [...] día del mes (de 1 a 31), monto de dinero transportado y distancia recorrida por el camión (medida en kilómetros). a) [...] lea y almacene la información de los viajes (a lo sumo 200). La lectura finaliza cuando se ingresa una distancia recorrida igual a 0 km [...] b) [...] informe: - El monto promedio transportado [...] - La distancia recorrida y el día del mes en que se realizó el viaje que transportó menos dinero. c) [...] elimine todos los viajes cuya distancia recorrida sea igual a 100 km. Nota: para realizar el inciso b, el vector debe recorrerse una única vez.

- **Solución**: [`12.pas`](../../../codigo/soluciones/practicas/practica-04-arreglos/12.pas)
- **Estado**: `parcial` (compila; el propio autor lo marca `//Me falta terminar`)
- **Enfoque**: sólo se implementó `Leer_todo`/`Leer_viaje` (inciso a). Los incisos b) y c) no tienen código.
- **Borrador previo** (`fuentes/practicas/practica-04-arreglos/12.txt`, transcripto tal cual):
  ```
  constante
    dias:1.31;
  dimensionFisica:200
  viajes_marzo
    dia:dias
    monto_dinero:real;
    distancia_recorridaKM:real;

  vector: array[1..dimF] de viajes_marzo

  leer_viajes()
    mientras (contador < dimF y viajes_marzo.distancia_recorridaKM<>0)
    leer_datos()


  leer_datos (algo:vector)
  ya
  ```

## Ejercicio 13

> En astrofísica, una galaxia se identifica por su nombre, su tipo (1. elíptica; 2. espiral; 3. lenticular; 4. irregular), su masa (medida en kg) y la distancia en pársecs (pc) [...] 53 galaxias que componen el Grupo Local [...] a) la cantidad de galaxias de cada tipo. b) la masa total acumulada de las 3 galaxias principales (la Vía Láctea, Andrómeda y Triángulo) y el porcentaje [...] c) la cantidad de galaxias no irregulares que se encuentran a menos de 1000 pc. d) el nombre de las dos galaxias con mayor masa y el de las dos galaxias con menor masa.

- **Solución**: [`13.pas`](../../../codigo/soluciones/practicas/practica-04-arreglos/13.pas)
- **Estado**: `parcial` — no compila (`Error: Identifier not found "max1"`, línea 106)
- **Enfoque**: a), b) y c) están resueltos dentro del `for` principal (`Vcontador`, `Masa_total`, `cant_galaxiasC`). El inciso d) llama a `DosMaximos(max1,max2,...)` con un procedimiento vacío y variables `max1`/`max2`/`nombreMax1`/`nombreMax2` que nunca se declararon; falta también el módulo `DosMinimos` (está comentado).
- **Borrador previo** (`fuentes/practicas/practica-04-arreglos/13.txt`, transcripto tal cual, muestra la descomposición modular planeada):
  ```
  dimF:53

  tipe
    estados:1..4
    galaxia record
      nombre
      tipo:estados;
      masa:integer;
      distancia:integer;

  leerDatos;
  cantidadDeGalaxiasPortipo();
  Masa_total_galaxias(la Vía Láctea, Andrómeda y Triángulo);
  porcentaje();
  Galax_menosmil();
  GalaxiasMayormasa();
  GalaxiasMenormasa();
  ```
- **Boceto de código** (imagen [`codigo-ejercicio-vector-galaxias.png`](../../../recursos/imagenes/practicas/practica-04-arreglos/codigo-ejercicio-vector-galaxias.png), sin enunciado propio asociado — es una captura de un editor mostrando un avance de este mismo ejercicio, no una fuente independiente): muestra un `for` recorriendo `VG` (`vectorGalaxias`) que resuelve el punto a) (`VC[tipo]:=VC[tipo]+1`) y arranca el punto b) (acumular `masaTotal` cuando el nombre es `'Via Lactea'`, `'Andromeda'` o `'Triangulo'`), con el punto c) señalado sólo como comentario (`//la cantidad de galaxias no irregulares que se encuentran a menos de 1000 pc.`) y un `if(` sin terminar. Es coherente con `13.pas`: ambos llegan hasta el punto b)/c) y ninguno de los dos completa el punto d).

## Ejercicio 14

> El Grupo Intergubernamental de Expertos sobre el Cambio Climático de la ONU (IPCC) realiza todos los años mediciones de temperatura en 100 puntos diferentes del planeta y, para cada uno de estos lugares, obtiene un promedio anual [...] desde hace 50 años [...] a) el año con mayor temperatura promedio a nivel mundial. b) el año con la mayor temperatura detectada en algún punto del planeta en los últimos 50 años.

- **Solución**: [`14.pas`](../../../codigo/soluciones/practicas/practica-04-arreglos/14.pas)
- **Estado**: `posiblemente-incorrecto` (compila, pero no calcula lo pedido)
- **Enfoque real**: el modelo de datos implementado (`vector_temp` de `anio` con campos `zona:1..10` y `temperatura`, `dimF=36`) no corresponde al enunciado (100 puntos × 50 años). El programa sólo cuenta cuántos registros hay por `zona`; no calcula el año de mayor promedio ni el año del máximo puntual.
- **Borrador previo** (`fuentes/practicas/practica-04-arreglos/14.txt`, transcripto tal cual):
  ```
  dimL=100
  tiempo 50 años

  array [1..dimF]

  for i:=1 to 365 do
    ingreseLugar();
    IngreseTemp();
  ```
  El borrador ya plantea un recorrido diario (`365`) que tampoco coincide con la estructura "100 puntos × 50 años" del enunciado; la solución final tomó un rumbo distinto (`zona`/`temperatura`) sin terminar de resolver ninguno de los dos incisos pedidos.

## Ejercicio 15

> El repositorio de código fuente más grande en la actualidad, GitHub, desea estimar el monto invertido en los proyectos que aloja [...] tabla con información de los desarrolladores [...] junto al valor promedio que se paga por hora de trabajo [...] a) El monto total invertido en desarrolladores con residencia en Argentina. b) La cantidad total de horas trabajadas por Administradores de bases de datos. c) El código del proyecto con menor monto invertido. d) La cantidad de Arquitectos de software de cada proyecto.

- **Solución**: [`15.pas`](../../../codigo/soluciones/practicas/practica-04-arreglos/15.pas)
- **Estado**: `parcial` (compila sin errores)
- **Enfoque**: sólo se avanzó sobre el inciso a) (`monto_total_arg`), y con un error semántico: el `case` de `Leer` calcula `monto_total:=rol_proyecto*valor_hora` en vez de `horas_trabajadas*valor_hora`. Los incisos b), c) y d) están comentados (`//Horas_adm_BasesDeDatos(...)`, etc.) y no se implementaron.
- **Nota sobre `fuentes/practicas/practica-04-arreglos/15.txt`**: su contenido es idéntico, carácter por carácter, al de `14.txt` (mismo borrador de "100 puntos/50 años/365 días"). No es un borrador genuino del ejercicio 15 (GitHub/desarrolladores); es, aparentemente, una copia accidental del archivo `14.txt` guardada con otro nombre. Se deja constancia en vez de inventar un borrador que no existe.

## Ejercicios adicionales (página 4 del PDF)

> Realizar un programa que lea números enteros desde teclado hasta que se ingrese el valor -1 (que no debe procesarse) e informe: la cantidad de ocurrencias de cada dígito procesado; el dígito más leído; los dígitos que no tuvieron ocurrencias. Por ejemplo, si la secuencia que se lee es: 63 34 99 94 96 -1 [...]

- **Solución**: no hay ningún `.pas` en `codigo/soluciones/practicas/practica-04-arreglos/` que resuelva este enunciado.
- **Estado**: `sin-solucion`

> La compañía Canonical Llt. desea obtener estadísticas acerca del uso de Ubuntu Linux en La Plata [...] versión de Ubuntu, cantidad de paquetes instalados y cantidad de cuentas de usuario [...] La lectura finaliza al ingresar la versión 4.10 [...]

- **Solución**: no hay ningún `.pas` en `codigo/soluciones/practicas/practica-04-arreglos/` que resuelva este enunciado.
- **Estado**: `sin-solucion`

## Programas adicionales sin enunciado numerado

Estos archivos están en la misma carpeta de soluciones pero no corresponden a ninguno de los 15 ejercicios ni a los 2 adicionales del PDF. Se describen por su contenido real; no hay enunciado verificable en las fuentes para ninguno de los cuatro.

| Archivo | Estado | Descripción |
|---|---|---|
| [`InstarOrdenado.pas`](../../../codigo/soluciones/practicas/practica-04-arreglos/InstarOrdenado.pas) | `resuelto` (compila) | Ejercicio suelto de inserción ordenada: recorre un vector desordenado de 5 enteros y va insertando cada elemento en su posición correcta dentro de un segundo vector (`BuscarPosicion` + `Insertar`), igual que la técnica "Manteniendo un orden" de `teoria.md`. |
| [`InstarOrdenado2.pas`](../../../codigo/soluciones/practicas/practica-04-arreglos/InstarOrdenado2.pas) | `resuelto` (compila) | Variante del mismo ejercicio (`DeterminarPosicion` + `Insertar`, `dimF=4`), con nombres de variables más genéricos. |
| [`ParcialRaro.pas`](../../../codigo/soluciones/practicas/practica-04-arreglos/ParcialRaro.pas) | `parcial` — no compila (`Error: Identifier not found "CargarTabla"`) | Programa que **usa una lista enlazada** (no un vector) de `docente`s, insertándolos ordenados por antigüedad dentro de cada categoría (`insertarPorAnios`) y calculando un puntaje contra una `Tabla` de categorías. Llama a `CargarTabla`, que nunca se definió (el comentario `//Se dispone` sugiere que se asumía provista por la cátedra, como en un parcial). |
| [`Probando.pas`](../../../codigo/soluciones/practicas/practica-04-arreglos/Probando.pas) | `resuelto` (compila) | Calculadora de consola con las operaciones `div` y `mod`; no tiene relación temática con vectores, parece un programa de prueba de esos dos operadores. |

## Fuentes preservadas sin procesar

- `7- Arreglos Primera Parte-Ideas.ppt`, `8- Arreglos Segunda Parte-Ideas.ppt`, `9- Arreglos Tercera Parte-Ideas.ppt` (`fuentes/practicas/practica-04-arreglos/`): archivo binario "Composite Document File V2" (PowerPoint 97-2003). Se confirmó con la herramienta de lectura que no puede procesarse en este entorno. `estado: "pendiente-revision"`.
- `Parciales.rar` (`fuentes/practicas/practica-04-arreglos/`): archivo RAR v5 confirmado (`file` lo identifica como tal). No hay `unrar`, `7z`, `7za` ni `rar` instalados en este entorno para extraerlo. `estado: "pendiente-revision"`.
