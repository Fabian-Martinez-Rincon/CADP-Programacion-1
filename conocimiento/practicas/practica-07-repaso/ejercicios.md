---
id: "CADP-P07-EJERCICIOS"
titulo: "Ejercicios - Práctica 7 - Repaso"
slug: "practica-07-ejercicios"
tipo: "ejercicio"
unidad: 7
tema: "repaso"
subtemas:
  - "vectores"
  - "listas-enlazadas"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-07-repaso/Redictado CADP 2020 - Practica 7 - Repaso.pdf"
    paginas: "1-4"
prerrequisitos:
  - "./teoria.md"
relacionados:
  - "./teoria.md"
  - "../adicionales.md"
codigo_relacionado:
  - "../../../codigo/soluciones/practicas/practica-07-repaso/"
---

# Ejercicios - Práctica 7 - Repaso

Enunciados transcritos textualmente de `Redictado CADP 2020 - Practica 7 - Repaso.pdf` (páginas 1-4).

> [!NOTE]
> **Validación real ejecutada**: los 14 archivos `.pas` de `codigo/soluciones/practicas/practica-07-repaso/` (más `adicionales/pepito-el-feito.pas`) se compilaron con Free Pascal 3.2.2 (`fpc -Se1`); de los 11 ejercicios numerados, **4 compilan sin errores (1, 2, 3 y 9)**. No se ejecutó ningún programa (todos requieren entrada por teclado). No se modificó ningún archivo fuente.

## Ejercicio 1

> Una productora nacional realiza un casting de personas para la selección de actores extras de una nueva película [...] DNI, apellido y nombre, edad y el código de género de actuación que prefiere (1: drama, 2: romántico, 3: acción, 4: suspenso, 5: terror). La lectura finaliza cuando llega una persona con DNI 33555444, la cual debe procesarse. [...] a. Informar la cantidad de personas cuyo DNI contiene más dígitos pares que impares. b. Informar los dos códigos de género más elegidos. c. Realizar un módulo que reciba un DNI, lo busque y lo elimine de la estructura. El DNI puede no existir.

- **Solución**: [`1.pas`](../../../codigo/soluciones/practicas/practica-07-repaso/1.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Enfoque**: `DniPares` implementa el patrón "dígitos pares vs. impares" (ver `teoria.md`) para a); `DosMax` lleva los dos géneros más elegidos en la misma pasada para b); `BorrarElemento` busca y elimina por DNI para c). Un detalle: el centinela se compara como `P.dni <> 3` en `CargarLista`, no contra `33555444` completo — el propio comentario lo explica: *"33555444 No me deja leer numeros de este tamaño un integer"* (un `integer` de 2 bytes en Pascal llega sólo hasta 32767; para DNIs de 8 cifras hace falta `longint`).

## Ejercicio 2

> Implementar un programa que lea y almacene información de clientes de una empresa aseguradora automotriz [...] código de póliza contratada (1..6) [...] La lectura finaliza cuando llega el cliente con código 1122, el cual debe procesarse. [...] a. Informar para cada cliente DNI, apellido, nombre y el monto completo [...] b. Informar apellido y nombre de aquellos clientes cuyo DNI contiene al menos dos dígitos 9. c. [...] módulo que reciba un código de cliente, lo busque (seguro existe) y lo elimine de la estructura.

- **Solución**: [`2.pas`](../../../codigo/soluciones/practicas/practica-07-repaso/2.pas)
- **Estado**: `posiblemente-incorrecto` (compila, pero con lógica incompleta)
- **Enfoque**: `InformarA` calcula el monto completo (a). `InformarB` cuenta dígitos `9` pero nunca hace `dig:=dig div 10` (usa `dni mod 10` una sola vez y después divide `dig`, no `dni` — bucle que no avanza sobre el DNI real). `EliminarCliente` (c) busca por `codPoliza` en vez de por **código de cliente** como pide el enunciado, y borra incondicionalmente aunque no haya encontrado coincidencia (el `if (act=L)` no está protegido por "¿se encontró algo?").

## Ejercicio 3

> Una remisería dispone de información acerca de los viajes realizados durante el mes de mayo de 2018 [...] ordenada por código de auto y para un mismo código de auto pueden existir 1 o más viajes. a. Informar los dos códigos de auto que más kilómetros recorrieron. b. Generar una lista nueva con los viajes de más de 5 kilómetros recorridos, ordenada por número de viaje.

- **Solución**: [`3.pas`](../../../codigo/soluciones/practicas/practica-07-repaso/3.pas)
- **Estado**: `parcial` (compila sin errores)
- **Enfoque**: usa corte de control por `cod_auto` (la lista ya viene ordenada por ese campo, según el enunciado) acumulando kilómetros por auto; `InsertarOrdenado` arma la segunda lista filtrando por `klrecorrido>5` e insertando por `num_viaje` — el patrón 4 de `teoria.md`. `actualizarMaximos` (a) se llama fuera del corte de control interno, con `L` ya en `nil` al final del recorrido externo, así que probablemente no compare el kilometraje correcto del último grupo (no se verificó por ejecución).

## Ejercicio 4

> Una maternidad dispone información sobre sus pacientes [...] nombre, apellido y peso registrado el primer día de cada semana de embarazo (a lo sumo 42) [...] a. Para cada embarazada, la semana con mayor aumento de peso. b. El aumento de peso total de cada embarazada durante el embarazo.

- **Solución**: [`4.pas`](../../../codigo/soluciones/practicas/practica-07-repaso/4.pas)
- **Estado**: `parcial` — no compila (`Error: Incompatible types: got "vector_semanas" expected "SmallInt"`, línea 43)
- **Enfoque**: `pesoInicial:=L^.datos.PesoDiaSemana` intenta asignar el vector completo de 42 pesos a una variable `integer` (`pesoInicial`), en vez de tomar `PesoDiaSemana[1]`. `MayorPesoSemana` tampoco calcula "en qué semana" ocurrió el mayor aumento (guarda el peso máximo, no la semana ni el aumento respecto a la semana anterior), así que ni a) ni b) quedan resueltos como se pide.

## Ejercicio 5

> Una empresa de transporte de cargas dispone de la información de su flota compuesta por 100 camiones [...] patente, año de fabricación y capacidad [...] 1. Informar la patente del camión que más kilómetros recorridos posee y la patente del camión que menos kilómetros recorridos posee. 2. Informar la cantidad de viajes [...] en camiones con capacidad mayor a 30,5 toneladas y [...] antigüedad mayor a 5 años [...] 3. Informar los códigos de los viajes realizados por choferes cuyo DNI tenga sólo dígitos impares. Nota: Los códigos de viaje no se repiten.

- **Solución**: [`5.pas`](../../../codigo/soluciones/practicas/practica-07-repaso/5.pas)
- **Estado**: `parcial` — no compila (`Error: Operator is not overloaded: "camion" < "Single"`, línea 91)
- **Enfoque**: `InformarA` (1) lleva máximo y mínimo de kilómetros. `InformarB` (2) compara `V[i]<30.5` donde `V` es un vector de `record camion`, no de su campo `capacidad` — debería ser `V[i].capacidad<30.5` (y, además, la condición está invertida: pide "mayor a 30,5 toneladas", no menor). `InformarC` (3) tiene la condición de "sólo impares" con el signo cambiado (`cumple:=false` cuando encuentra un par, arrancando con `cumple:=false` en vez de `true`, y el `while` exige `cumple=true` para seguir cuando debería seguir mientras no se demuestre lo contrario) — no calcula lo pedido tal como está.

## Ejercicio 6

> El Observatorio Astronómico de La Plata [...] objetos astronómicos [...] 7 categorías [...] A. [...] lea y almacene la información [...] hasta encontrar un objeto con código -1 [...] La estructura generada debe mantener el orden en que fueron leídos los datos. B. [...] I. Los códigos de los dos objetos más lejanos [...] II. La cantidad de planetas descubiertos por "Galileo Galilei" antes del año 1600. III. La cantidad de objetos observados por cada categoría. IV. Los nombres de las estrellas cuyos códigos de objeto poseen más dígitos pares que impares.

- **Solución**: [`6.pas`](../../../codigo/soluciones/practicas/practica-07-repaso/6.pas)
- **Estado**: `parcial` — no compila (`Error: Identifier not found "impar"`, línea 105)
- **Enfoque**: `CargarLista`/`OrdenarLista` resuelven A) (agregando siempre adelante, lo que en realidad **invierte** el orden de lectura en vez de mantenerlo — para preservar el orden original haría falta agregar atrás, como en la Práctica 6). `DosMaximos` resuelve B.I). El conteo de planetas de Galileo (B.II) y por categoría (B.III) están en el `for` principal. B.IV) (`masPares`) declara la variable `impares` pero usa `impar` (no declarada) al escribir, y además nunca decrementa `obs.cod_objeto` dentro de su `while`, por lo que sería un bucle infinito aunque compilase.

## Ejercicio 7

> La Facultad de Informática desea procesar la información de los alumnos que finalizaron la carrera [...] las notas obtenidas en cada una de las 24 materias que aprobó [...] 1. [...] Las 24 notas correspondientes a cada alumno deben quedar ordenadas de forma descendente. 2. [...] a. El promedio de notas [...] b. La cantidad de alumnos ingresantes 2012 cuyo número de alumno está compuesto únicamente por dígitos impares. c. [...] los dos alumnos que más rápido se recibieron [...] 3. [...] módulo que [...] busque y elimine de la estructura [...] El alumno puede no existir.

- **Solución**: [`7.pas`](../../../codigo/soluciones/practicas/practica-07-repaso/7.pas)
- **Estado**: `parcial` — no compila (`Error: Wrong number of parameters specified for call to "mostrarMinimos"`, línea 155)
- **Enfoque**: `CalcularPromedio` (2a) y `contarimpar` (2b, con el mismo problema de "olvidar decrementar" que en el ejercicio 6) están escritos. `InsertarOrdenado` (para 1, ordenar las 24 notas) queda **vacío** (sin cuerpo). `EliminarElemento` (3) está completo. `mostrarMinimos` se declara con parámetros `(R1,R2:Rmin)` pero se invoca sin argumentos (`mostrarMinimos();`), lo que impide compilar.

## Ejercicio 8

> Una entidad bancaria [...] transferencias de dinero entre cuentas bancarias [...] a) Generar una nueva estructura que contenga sólo las transferencias a terceros [...] ordenada por número de cuenta origen. [...] b) [...] monto total transferido a terceros. c) [...] código de motivo que más transferencias a terceros tuvo. d) [...] cantidad de transferencias a terceros realizadas en el mes de Junio en las cuales el número de cuenta destino posea menos dígitos pares que impares.

- **Solución**: [`8.pas`](../../../codigo/soluciones/practicas/practica-07-repaso/8.pas)
- **Estado**: `parcial` — no compila (`Error: Identifier not found "L"`, línea 54)
- **Enfoque**: `ordenarTerceros` (a) usa la variable `L` (no declarada en ese procedimiento; debería ser `terceros`, el parámetro real) en la rama "insertar al principio". `InformarMasAlto` (c) recorre el vector contador pero nunca se llama desde `RecorrerLista`. El filtro de fecha en d) compara `fecha.mes = 7` (julio) en vez de junio (`mes = 6`), y `LeerDigitos` (dígitos pares/impares) nunca hace `numero:=numero div 10`, por lo que sería un bucle infinito además de no decidir "menos pares que impares" (la condición implementada es `par>impar`, la inversa).

## Ejercicio 9

> Un cine posee la lista de películas que proyectará durante el mes de Febrero [...] a) Actualizar (en la lista que se dispone) el puntaje promedio otorgado por las críticas [...] La lectura finaliza cuando se lee el código de película -1 y la información viene ordenada por código de película. b) Informar el código de género que más puntaje obtuvo [...] c) Informar el apellido y nombre de aquellos críticos que posean la misma cantidad de dígitos pares que impares en su DNI. d) [...] módulo que elimine de la lista [...] una película cuyo código se recibe como parámetro (el mismo puede no existir).

- **Solución**: [`9.pas`](../../../codigo/soluciones/practicas/practica-07-repaso/9.pas)
- **Estado**: `parcial` (compila sin errores)
- **Enfoque**: `CargarCritica` agrupa las críticas por código de película (corte de control, ya que vienen ordenadas) y calcula el promedio por película en `agregarListaNueva`, resolviendo a). Los incisos b), c) y d) no tienen código: no hay ningún módulo que use el género, cuente dígitos pares/impares de un DNI, ni elimine una película por código en este archivo.
- **Borrador previo** (`fuentes/practicas/practica-07-repaso/9 Planteando.txt`, transcripto tal cual, coincide con el planteo de a) y del acumulador por género de b)):
  ```
  ListaPeliculas Tipo: Peliculas
  Peliculas: codigo,codGenero,puntPromedio
  ListaCriticas Tipo: Criticas
  Critica: DNI,apellido,nombre,codigo,puntuaje
  vectorCodigo= array 1..8 tipo: Real;

  ProcesarCriticas {
  	LeerCriticas(C);
  	mientras C.codigo <> -1{
  		InsertarOrdenado(L,C)
  		LeerCritica(C);
  	}


  }
  RecorrerLista(L){
  	mientras L<> nil{
  		VC[L^.datos.codGenero]:=VC[L^.datos.codGenero]+L^.datos.puntuaje
  	}


  }
  ```
  El plan ya incluía un acumulador `vectorCodigo` por género (para el inciso b), que finalmente no se trasladó al `.pas`.

## Ejercicio 10

> Una compañía de venta de insumos agrícolas [...] cultivos que realiza (a lo sumo 20) [...] a. [...] hasta que llegue una empresa con código -1 [...] Para cada empresa se leen todos sus cultivos, hasta que se ingrese un cultivo con 0 hectáreas [...] b. Nombres de las empresas radicadas en "San Miguel del Monte" que cultivan trigo y cuyo código de empresa posee al menos dos ceros. c. La cantidad de hectáreas dedicadas al cultivo de soja y qué porcentaje representa [...] d. La empresa que dedica más tiempo al cultivo de maíz. e. [...] módulo que incremente en un mes los tiempos de cultivos de girasol de menos de 5 hectáreas de todas las empresas que no son estatales.

- **Soluciones**: [`10.pas`](../../../codigo/soluciones/practicas/practica-07-repaso/10.pas) (`program diez`) y [`10PRO.pas`](../../../codigo/soluciones/practicas/practica-07-repaso/10PRO.pas) (`program repasoEj10`, segundo intento)
- **Estado**: `parcial` — ninguno de los dos compila. `10.pas`: `Error: Illegal expression` (línea 138) por `and ()` con paréntesis vacíos en el `if` de `RecorrerLista` (`if (L^.datos.nombreCiudad = 'San Miguel del Monte') and () and (cumple=True)then`). `10PRO.pas`: `Fatal: Syntax error, ":" expected but ")" found` (línea 138) por `procedure maxMaiz(vc:vectorCultivos;empresaMaiz,maximo);`, que declara `empresaMaiz` y `maximo` sin tipo.
- **Enfoque**: ambos intentos leen empresas y su vector de cultivos (a) y calculan si cultivan trigo (`cultivanTrigo`/`cumpleTringo`) y si el código tiene ceros (`pares`/`cumpleCeros`) para resolver b). Ninguno de los dos completa c), d) ni e); `maxMaiz` queda declarada pero vacía o mal tipada en los dos archivos.
- **Nota**: [`11.pas`](../../../codigo/soluciones/practicas/practica-07-repaso/11.pas) tiene, pese al nombre, **el mismo contenido que `10.pas`** (no es una solución del ejercicio 11) — ver la nota en el ejercicio 11.

## Ejercicio 11

> Realizar un programa para una empresa productora que necesita organizar 100 eventos culturales [...] 1. Generar una estructura con las ventas de entradas [...] 2. [...] a. El nombre y lugar de los dos eventos que han tenido menos recaudación. b. La cantidad de entradas vendidas cuyo comprador contiene en su DNI más dígitos pares que impares y que sean para el evento de tipo "obra de teatro". c. Si la cantidad de entradas vendidas para el evento número 50 alcanzó la cantidad máxima de personas permitidas.

- **Solución real**: [`11Pro.pas`](../../../codigo/soluciones/practicas/practica-07-repaso/11Pro.pas) (`program repasoEj11`)
- **Estado**: `parcial` — no compila (`Fatal: Syntax error, ";" expected but "identifier LEERVENTA" found`, línea 75, por `AgregarAdelante(L,V)` sin `;` antes de `LeerVenta(V);`)
- **Enfoque**: `DosMenores` (2a) lleva los dos eventos de menor recaudación en una pasada (patrón 2 de `teoria.md`); `dniPar` (2b) cuenta dígitos pares/impares del DNI; el filtro por tipo "obra de teatro" compara `TE[...].evento = 'obra de teatro'` cuando en realidad `evento` guarda el **nombre** del evento, no su tipo (`tipo` es un campo aparte con valores 1-5) — comparación contra el campo equivocado. El inciso c) sí compara `vc[50] >= TE[50].MaxPersonas` correctamente.
- **Nota sobre `11.pas`**: el archivo llamado [`11.pas`](../../../codigo/soluciones/practicas/practica-07-repaso/11.pas) en esta misma carpeta **no** contiene una solución del ejercicio 11: es una copia exacta del contenido de `10.pas` (mismo `program diez`, mismos cultivos/empresas). Se documenta la discrepancia en vez de describir un contenido que el archivo no tiene.

## Problemas adicionales "tipo parcial" (sin enunciado en este PDF)

Tres archivos más en la carpeta, con enunciado tomado únicamente del comentario dentro de cada `.pas` (no hay un PDF de parciales en el alcance de este trabajo; se transcribe el enunciado tal como aparece en el código, que es la única fuente disponible y verificable).

### `Parcial.pas`

> *(sin enunciado en comentario — el archivo empieza con un bloque de comentario vacío `{ }`)*

- **Solución**: [`Parcial.pas`](../../../codigo/soluciones/practicas/practica-07-repaso/Parcial.pas)
- **Estado**: `no-verificable` (no compila: `Error: identifier idents no member "sig"`, línea 140) — sin enunciado no se puede evaluar si la solución responde lo pedido
- **Descripción por el código**: procesa espectadores de cine (DNI, apellido, nombre, código de película, categoría), cuenta espectadores por categoría de película con `actualizarMaximos` (patrón "dos máximos"), filtra por DNI con dígitos todos pares (`DNIPar`) armando una segunda lista, y borra un espectador por DNI (`EliminarDNI`, que usa una variable `exito` no declarada en su propio ámbito).

### `Parcial2.pas`

> *(sin enunciado en comentario — el archivo empieza con un bloque de comentario vacío `{ }`)*

- **Solución**: [`Parcial2.pas`](../../../codigo/soluciones/practicas/practica-07-repaso/Parcial2.pas)
- **Estado**: `no-verificable` (no compila: `Error: Identifier not found "anio"`, línea 14, porque el `record Libro` usa el tipo `anio` cuando lo declarado un renglón antes es `anioV`)
- **Descripción por el código**: vector de hasta 5000 libros (código, materia, título, año, precio, autor) y una `venta` asociada. `LeerYAlmacenar` intenta usar `AgregarOrdenado` para mantenerlo ordenado por código, pero ese procedimiento queda con un `for` sin cuerpo (`for i:=pos downto pos to` — sintaxis incompleta) y usa una variable `pos` no declarada en `LeerYAlmacenar`.

### `Parcial_ISBN.pas`

> La biblioteca de la Universidad Nacional de La Plata necesita un programa para administrar información de préstamos de libros efectuados en marzo de 2020. Para ello, se debe leer la información de los préstamos realizados. De cada préstamo se lee: nro. de préstamo, ISBN del libro prestado, nro. de socio al que se prestó el libro, día del préstamo (1..31). La información de los préstamos se lee de manera ordenada por ISBN y finaliza cuando se ingresa el ISBN -1 (que no debe procesarse). Se pide: A) Generar una estructura que contenga, para cada ISBN de libro, la cantidad de veces que fue prestado. Esta estructura debe quedar ordenada por ISBN de libro. B) Calcular e informar el día del mes en que se realizaron menos préstamos. C) Calcular e informar el porcentaje de préstamos que poseen nro. de préstamo impar y nro. de socio par.

*(enunciado transcripto del comentario dentro del propio archivo — es la única fuente disponible; no está en el PDF de esta práctica ni en ningún otro de los PDF de esta unidad)*

- **Solución**: [`Parcial_ISBN.pas`](../../../codigo/soluciones/practicas/practica-07-repaso/Parcial_ISBN.pas)
- **Estado**: `parcial` (compila sin errores)
- **Enfoque**: `leerInfo` agrupa por ISBN con corte de control (la entrada viene ordenada por ISBN) y arma `Lnueva` con `agregarAtraz`, resolviendo A). Los incisos B) y C) no tienen código: `leerInfo` termina imprimiendo las dos listas, sin calcular el día con menos préstamos ni el porcentaje pedido.

## Programa adicional sin enunciado formal: "Pepito El Feito"

[`adicionales/pepito-el-feito.pas`](../../../codigo/soluciones/practicas/practica-07-repaso/adicionales/pepito-el-feito.pas) — **`estado: "resuelto"`, compila sin errores**. Es un programa de postres/pedidos hecho por cuenta propia, sin enunciado en ninguna fuente disponible. Catalogado junto con el otro programa suelto de la unidad (`carolina-program.pas`) en [`../adicionales.md`](../adicionales.md), donde se describe con más detalle.
