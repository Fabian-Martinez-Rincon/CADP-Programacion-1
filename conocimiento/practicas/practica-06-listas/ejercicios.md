---
id: "CADP-P06-EJERCICIOS"
titulo: "Ejercicios - Práctica 6 - Listas"
slug: "practica-06-ejercicios"
tipo: "ejercicio"
unidad: 6
tema: "listas-enlazadas"
subtemas:
  - "listas-enlazadas"
  - "corte-de-control"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-06-listas/Redictado CADP 2020 - Práctica 6 - Listas.docx.pdf"
    paginas: "1-5"
prerrequisitos:
  - "./teoria.md"
relacionados:
  - "./teoria.md"
  - "../practica-repaso-redictado-2020/ejercicios-practica-06.md"
codigo_relacionado:
  - "../../../codigo/soluciones/practicas/practica-06-listas/"
---

# Ejercicios - Práctica 6 - Listas

Enunciados transcritos textualmente de `Redictado CADP 2020 - Práctica 6 - Listas.docx.pdf` (páginas 1-5; el archivo tiene extensión `.docx.pdf` pero es un PDF legible, no un Word).

> [!NOTE]
> **Validación real ejecutada**: los 17 archivos `.pas` de esta carpeta se compilaron con Free Pascal 3.2.2 (`fpc -Se1`); 12 compilan sin errores y 5 fallan. No se ejecutó ninguno (todos requieren entrada por teclado). No se modificó ningún archivo fuente.

## Ejercicio 1

> Dado el siguiente programa: a. Indicar qué hace el programa. b. Indicar cómo queda conformada la lista si se lee la siguiente secuencia de números: 10 21 13 48 0. c. Implementar un módulo que imprima los números enteros guardados en la lista generada. d. Implementar un módulo que reciba la lista y un valor, e incremente con ese valor cada dato de la lista.

- **Solución**: [`1.pas`](../../../codigo/soluciones/practicas/practica-06-listas/1.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Enfoque**: respuestas a) y b) en comentario al inicio ("Ingresa un nombre adelante"; con la secuencia dada, la lista queda `48 13 21 10`, porque `armarNodo` agrega siempre al principio). `imprimirNodo` resuelve c); `imprimirSuma` resuelve d).

## Ejercicio 2

> Dado el siguiente código, identificar los 9 errores.

- **Solución**: [`2.pas`](../../../codigo/soluciones/practicas/practica-06-listas/2.pas)
- **Estado**: `parcial` — no compila (a propósito: el enunciado sólo pide *identificar* los errores, no corregirlos; que el código no compile es el punto de partida esperado)
- **Enfoque**: el archivo deja comentados 4 de los 9 errores pedidos: *"Error 1 no podemos leer el espacio de memoria, falta el ^"* (en `leerPersona`), *"error 2 Falta un incremento de posicion ya que se queda en un bucle infinito"* (en `generarLista`), *"Error 3 Falta el new para el aux"* (en `agregarAdelante`) y *"error 4 y 5 estan mal declaradas"* (en el `writeln` de `imprimirInformacion`, que usa `l^.nombre`/`l^.apellido` en vez de `l^.dato.nombre`/`l^.dato.apellido`). No llegó a identificar los 9 completos (por ejemplo, no señala que `agregarAdelante` se usa antes de declararse, ni que su parámetro `l` debería ser `var l` para que el enlace persista).

## Ejercicio 3

> Utilizando el programa del ejercicio 1, realizar los siguientes cambios: a. Modificar el módulo `armarNodo` para que los elementos se guarden en la lista en el orden en que fueron ingresados (agregar atrás). b. Modificar el módulo `armarNodo` para que los elementos se guarden en la lista en el orden en que fueron ingresados, manteniendo un puntero al último ingresado.

- **Solución (inciso a)**: [`3.pas`](../../../codigo/soluciones/practicas/practica-06-listas/3.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Enfoque**: recorre hasta el último nodo (`while act^.sig <> NIL`) y engancha ahí el nuevo — equivalente a `AgregarAlFinal1` de `teoria.md`.
- **Inciso b (puntero al último)**: no está resuelto en esta carpeta. Sí está resuelto en el set de repaso 2020: [`../practica-repaso-redictado-2020/ejercicios-practica-06.md#ejercicio-3`](../practica-repaso-redictado-2020/ejercicios-practica-06.md#ejercicio-3) (`3.b.pas`, equivalente a `AgregarAlFinal2` de `teoria.md`).
- **Nota conceptual** (`fuentes/practicas/practica-06-listas/AgregarAlUltimo.txt`, transcripta tal cual): *"Primero, al proceso, recibe por parametros, el puntero al ultimo elemento de la lista, la lista en la que queremos que se inserte el elemento y el elemento. Luego creamos una lista nueva que es la que va a contener el elemento que queremos ingresar. Verificamos que la lista no este en el ultimo elemento, en el caso de que no este en el ultimo, a la posicion siguiente de este mismo, agregamos el elemento deseado y en caso contrario lo agregamos al primer elemento. Por ultimo, solo nos queda actualizar el ultimo elemento de la lista."* Esto describe exactamente la técnica de `AgregarAlFinal2`/`3.b.pas` (inciso b).
- **Nota personal** (`fuentes/practicas/practica-06-listas/apuntews.txt`): *"Si hago el agregar al final siempre uso el 2"* — recordatorio de una línea de quien cursó, prefiriendo la variante con puntero al último (inciso b) por sobre la que recorre toda la lista cada vez (inciso a).

## Ejercicio 4

> Utilizando el programa del ejercicio 1, realizar los siguientes módulos: a. `Máximo` [...] b. `Mínimo` [...] c. `Múltiplos`: recibe como parámetros la lista L y un valor entero A, y retorna la cantidad de elementos de la lista que son múltiplos de A.

- **Solución**: [`4.pas`](../../../codigo/soluciones/practicas/practica-06-listas/4.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Enfoque**: `MaximoLista`, `MinimoLista` y `MultiplosA`, los tres recorriendo la lista con el mismo patrón `while (ListaF<>Nil) do ... ListaF:=ListaF^.sig`.

## Ejercicio 5

> Realizar un programa que lea y almacene la información de productos de un supermercado [...] a. Porcentaje de productos con stock actual por debajo de su stock mínimo. b. Descripción de aquellos productos con código compuesto por al menos tres dígitos pares. c. Código de los dos productos más económicos.

- **Solución**: [`5.pas`](../../../codigo/soluciones/practicas/practica-06-listas/5.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Enfoque**: `minimos` resuelve a) (porcentaje); `digPares`/`todo` resuelven b) (recorre dígito a dígito con `mod 10`/`div 10`, cuenta pares, imprime si hay al menos 3); `Productos_economicos` resuelve c) llevando los dos precios más bajos en una sola pasada.

## Ejercicio 6

> La Agencia Espacial Europea (ESA) [...] sondas espaciales [...] a. El nombre de la sonda más costosa [...] b. La cantidad de sondas que realizarán estudios en cada rango del espectro electromagnético. c. La cantidad de sondas cuya duración estimada supera la duración promedio [...] d. El nombre de las sondas cuyo costo de construcción supera el costo promedio [...] Nota: para resolver los incisos a), b), c) y d), la lista debe recorrerse una única vez.

- **Solución**: [`6.pas`](../../../codigo/soluciones/practicas/practica-06-listas/6.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Enfoque**: `Sonda_Costosa` (a), un `vector_contador` indexado por `rango_espectro` (b), y `Mayor_que_promedio_costo` (c y d, esta última armando una segunda lista `mucho_costo` con los nombres) se llaman todos dentro de un único recorrido de la lista principal. Los promedios usados en c)/d) se calculan en una primera pasada de acumulación y se aplican en una segunda (dos recorridos en total, no uno solo como pide la nota, porque el promedio necesita conocerse antes de poder compararlo).

## Ejercicio 7

> El Programa Horizonte 2020 (H2020) [...] criterios: sólo se financiarán proyectos cuyo costo de mantenimiento no supere el costo de construcción [...] no se financiarán proyectos [...] que analicen ondas de radio [...] a. Invoque un módulo que reciba la información de una sonda espacial, y retorne si cumple o no con los nuevos criterios H2020. b. [...] procese la lista de sondas [...] y retorne dos listados, uno con los proyectos que cumplen [...] y otro con aquellos que no los cumplen. c. Invoque a un módulo que reciba una lista de proyectos de sondas espaciales e informe la cantidad y el costo total [...] de los proyectos que no serán financiados por H2020.

- **Solución**: [`7.pas`](../../../codigo/soluciones/practicas/practica-06-listas/7.pas)
- **Estado**: `parcial` (compila sin errores)
- **Enfoque**: `Retorna7` resuelve a); `B` resuelve b) (arma `Lista_Cumple`/`Lista_NoCumple`, aunque tiene un desliz: en la rama "sí cumple" agrega `nombre_Nocumple` a `Lista_Cumple` en vez de `nombre_cumple`). El inciso c) no se implementó — el propio archivo lo dice: *"//No entendi la consiga 'C'"*.
- **Borrador previo** (`fuentes/practicas/practica-06-listas/7.txt`, transcripto tal cual, mayúsculas y pseudocódigo del original):
  ```
  A) MODULO RETORNA
  	FUCTION	( Lista:lista ) CUMPLE BOOL:

  	if (costoMantenimiento < CostoConstruccion) and (rango <> 1) then
  		CUMPLE :BOOL

  B) PROCESO COSA (LISTAF:LISTA,LISTA_CUMPLE:LISTA2,LISTA_NOCUMPLE:LISTA2);
     VAR
  	CUMPLE:BOOLEAN
  	NOMBRE_CUMPLE:STR20;
  	NOMBRE_NOCUMPLE:STR20;
  	BEGIN
  		CUMPLE:=FALSE;
  		WHILE (LISTAF <> NIL) THEN
  			CUMPLE := RETORNA(LISTAF)
  		|	IF (CUMPLE := FALSE)THEN
  			BEGIN
  				NOMBRE_NOCUMPLE := LISTA^.SONDA.NOMBRE;
  				ORDENAR NODO2(LISTA_NOCUMPLE,NOMBRE_NOCUMPLE)
  			END;
  			ELSE
  			BEGIN
  				NOMBRE_CUMPLE := LISTA^.SONDA.NOMBRE;
  				ORDENAR NODO2(LISTA_NOCUMPLE,NOMBRE_NOCUMPLE)
  				CUMPLE := FALSE
  			END

  	END;
  ```
  El plan ya preveía sólo los incisos a) y b); el inciso c) no aparece ni en el borrador ni en la solución final.

## Ejercicio 8

> Utilizando el programa del ejercicio 1, modificar el módulo `armarNodo` para que los elementos de la lista queden ordenados de manera ascendente (insertar ordenado).

- **Solución**: [`8.pas`](../../../codigo/soluciones/practicas/practica-06-listas/8.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Enfoque**: `armarNodo` pasa a recorrer buscando la posición (`while act<>NIL and act^.num < v`) y enlaza ahí — la técnica "Insertar un nuevo elemento en una lista ordenada" de `teoria.md`.

## Ejercicio 9

> Utilizando el programa del ejercicio 1, realizar los siguientes módulos: a. `EstáOrdenada` [...] b. `Eliminar` [...] c. `Sublista`: recibe como parámetros la lista L y dos valores enteros A y B, y retorna una nueva lista con todos los elementos de la lista L mayores que A y menores que B. d. Modifique `Sublista` [...] lista ordenada de manera ascendente. e. Modifique `Sublista` [...] lista ordenada de manera descendente.

- **Solución**: [`9.pas`](../../../codigo/soluciones/practicas/practica-06-listas/9.pas)
- **Estado**: `parcial` (compila sin errores)
- **Enfoque**: `EstaOrdenada` (a) y `Sublista` (c) están implementados y se prueban en el programa principal. `Eliminar` (b) está implementado pero **no se invoca** en el programa principal (queda comentado: *"//writeln('Ingrese el nombre que quiere eliminar'); //ReadLn(ElementoEliminar); //Eliminar(ElementoEliminar,pri);"*). Los incisos d) y e) (variantes de `Sublista` aprovechando que la lista ya está ordenada, para cortar antes de recorrerla entera) no se implementaron por separado.
- **Duda registrada** (`fuentes/practicas/practica-06-listas/Dudas Para Juli.txt`): *"Me falta la parte de imprimir ordenados en el ejercicio 11"* — la otra duda de ese archivo (sobre el ejercicio 9, inciso d) se cita en el ejercicio 9 de este listado por ser la nota más cercana en tema: *"No entiendo la consigna D del ejercicio 9"*, coherente con que d) haya quedado sin resolver.

## Ejercicio 10

> Una empresa de sistemas está desarrollando un software para organizar listas de espera de clientes [...] a. Definir una estructura de datos apropiada [...] b. Implementar el módulo `RecibirCliente` [...] c. Implementar el módulo `AtenderCliente` [...] El cliente atendido debe eliminarse de la lista de espera. d. Implementar un programa que simule la atención de los clientes [...]

- **Solución**: [`10.pas`](../../../codigo/soluciones/practicas/practica-06-listas/10.pas)
- **Estado**: `parcial` — no compila (`Error: Identifier not found "BorrarElemento"`, línea 95)
- **Enfoque**: `agregarAtras`/`RecibirCliente`/`CargarLista` resuelven a)/b); `AtenderCliente` llama a un `BorrarElemento` que nunca se definió en este archivo — el propio comentario lo reconoce: *"Tengo problemas con el modulo borrar (me estoy volviendo loco)"*.
- **Versión corregida**: [`Nose.pas`](../../../codigo/soluciones/practicas/practica-06-listas/Nose.pas) (mismo programa, con `BorrarElemento` definido y `RecorrerLista` en lugar del bucle final) — **compila sin errores**. Ver tabla de "archivos adicionales" más abajo.

## Ejercicio 11

> La Facultad de Informática debe seleccionar los 10 egresados con mejor promedio [...] a. Lea la información de los todos egresados [...] b. [...] informe el apellido y número de alumno de los egresados que recibirán el premio. La información debe imprimirse ordenada según el promedio del egresado (de mayor a menor).

- **Solución**: [`11.pas`](../../../codigo/soluciones/practicas/practica-06-listas/11.pas)
- **Estado**: `parcial` (compila sin errores)
- **Enfoque**: `LeerEgresados` resuelve a); `JuntarDiezMejores`/`Mejores_egresados` seleccionan los 10 mejores promedios en un vector auxiliar. La impresión ordenada de mayor a menor (`ImprimirOrdenados`) no quedó claramente resuelta (recorre buscando un "mayor" con una lógica que no se pudo verificar como correcta sólo por lectura, ya que no se ejecutó el programa).
- **Duda registrada** (`fuentes/practicas/practica-06-listas/Dudas Para Juli.txt`, transcripta tal cual): *"Me falta la parte de imprimir ordenados en el ejercicio 11"* — coincide exactamente con la parte del enunciado que quedó sin resolver con confianza.

## Ejercicio 12

> Una empresa desarrolladora de juegos para teléfonos celulares con Android [...] a. La cantidad de dispositivos para cada versión de Android. b. La cantidad de dispositivos con más de 3 GB de memoria y pantallas de a lo sumo a 5 pulgadas. c. El tamaño promedio de las pantallas de todos los dispositivos.

- **Solución**: [`12.pas`](../../../codigo/soluciones/practicas/practica-06-listas/12.pas)
- **Estado**: `parcial` — no compila (`Error: Identifier not found "CargarInfo"`, línea 67)
- **Enfoque**: `ABYC` implementa a), b) y c) en un único recorrido, agrupando por versión con un corte de control (mismo patrón que el corte de control de la Práctica 4). El programa principal llama a `CargarInfo(L)` con el comentario `//Se dispone`, asumiendo un módulo de carga que la cátedra proveería y que no está en este archivo.

## Ejercicio 13

> El Portal de Revistas de la UNLP [...] a. Imprimir el nombre de usuario y la cantidad de días desde el último acceso de todos los usuarios de la revista Económica [...] ordenado [...] ascendente. b. Informar la cantidad de usuarios por cada rol para todas las revistas del portal. c. Informar los emails de los dos usuarios que hace más tiempo que no ingresan al portal.

- **Solución**: [`13.pas`](../../../codigo/soluciones/practicas/practica-06-listas/13.pas)
- **Estado**: `parcial` — no compila (`Fatal: Syntax error, ":" expected but ";" found`, línea 53)
- **Enfoque**: `InsertarElemento` (inserción ordenada por `cant_dias`) resuelve a); `vContador` acumula por rol para b). La declaración `procedure actualizarDosMaximos (max1;max2;mmax1;mmax2;mailUsuario;)` (pensada para c) quedó sin tipos de parámetros ni cuerpo — es la causa del error de sintaxis — y el `Informar` final referencia variables (`mailmax1`, `mailmax2`) que no llegaron a declararse.

## Ejercicio 14

> La oficina de becas y subsidios [...] viajes realizados por una muestra de 1300 alumnos [...] a. La cantidad de alumnos que realizan más de 6 viajes por día. b. La cantidad de alumnos que gastan en transporte más de $80 por día. c. Los dos medios de transporte más utilizados. d. La cantidad de alumnos que combinan bicicleta con algún otro medio de transporte.

- **Solución**: [`14.pas`](../../../codigo/soluciones/practicas/practica-06-listas/14.pas)
- **Estado**: `parcial` (compila; el propio archivo empieza con el comentario `//INCOMPLETO`)
- **Enfoque**: `LeerAlumno`/`CargarLista` cargan la lista y calculan `gasto_total`/`cant_viajes` por alumno leído, comparándolos contra los umbrales de a)/b) — pero la comparación ocurre **después** de leer al siguiente alumno (la variable ya fue pisada), y los incisos c) y d) no se implementaron (`RecorrerLista` sólo recorre sin acumular nada).

## Ejercicios adicionales (página 5 del PDF)

> La cátedra de CADP está organizando la cursada para el año 2019 [...] distribuya en turnos [...] Los alumnos que obtuvieron al menos 8 en EPA deberán ir a los turnos 1 ó 4. Los alumnos que obtuvieron entre 5 y 8 deberán ir a los turnos 2, 3 ó 5. Los alumnos que no alcanzaron la nota 5 no se les asignará turno en CADP [...] Nota: La distribución de alumnos debe ser lo más equitativa posible.

- **Solución**: [`adicional1.pas`](../../../codigo/soluciones/practicas/practica-06-listas/adicional1.pas)
- **Estado**: `parcial` (compila; el propio archivo empieza con el comentario `//INCOMPLETO`)
- **Enfoque**: define los 5 tipos de lista (`Turno1`..`Turno5`) pero `RecorrerLista` sólo detecta `nota >= 8` con un `begin end` vacío — no llega a asignar turnos ni a imprimir nada.

> La empresa distribuidora de una app móvil para corredores [...] informar: la cantidad total de corredores [...] la ciudad que convocó la mayor cantidad de corredores [...] la distancia promedio recorrida por corredores de Brasil [...] la cantidad de corredores que partieron de una ciudad y finalizaron en otra [...] el paso [...] promedio de los corredores de la ciudad de Boston.

- **Solución**: no hay ningún `.pas` en `codigo/soluciones/practicas/practica-06-listas/` que resuelva este enunciado.
- **Estado**: `sin-solucion`

## Archivos adicionales sin enunciado numerado

| Archivo | Estado | Descripción |
|---|---|---|
| [`Nose.pas`](../../../codigo/soluciones/practicas/practica-06-listas/Nose.pas) | `resuelto` (compila) | Versión corregida y completa del ejercicio 10 (lista de espera): define `BorrarElemento` (que faltaba en `10.pas`) y agrega `RecorrerLista`. Es, en la práctica, la solución real y completa del ejercicio 10. |
| [`ProgramaTeoria.pas`](../../../codigo/soluciones/practicas/practica-06-listas/ProgramaTeoria.pas) | `sin-solucion` — no compila (`Fatal: Syntax error, "." expected but ";" found`) | Pese al nombre del archivo, no contiene teoría ni resuelve un ejercicio de esta práctica: es un estirado en blanco (`program AmazonBooks; begin end;`, con `end;` en vez de `end.`) para un enunciado sobre una editorial de libros ("Relato de un náufrago", editorial "Planeta Libros") transcripto como comentario, que **no pertenece** a ninguna de las dos fuentes PDF de esta práctica ni de la 7. Se documenta la existencia del enunciado embebido, sin poder verificar su procedencia. |
