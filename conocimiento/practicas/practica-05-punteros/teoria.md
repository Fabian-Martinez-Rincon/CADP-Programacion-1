---
id: "CADP-P05-TEORIA"
titulo: "Punteros"
slug: "punteros"
tipo: "teoria"
unidad: 5
tema: "punteros"
subtemas:
  - "memoria-estatica"
  - "memoria-dinamica"
  - "variable-puntero"
  - "new-dispose"
  - "sizeof"
  - "punteros-como-parametros"
  - "vector-de-punteros"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "mixto"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-05-punteros/Redictado CADP 2020 - Práctica 5 - Punteros.pdf"
    paginas: "1-4"
  - archivo: "../../../fuentes/practicas/practica-05-punteros/Conceptual.docx"
  - archivo: "../../../fuentes/practicas/practica-05-punteros/EP6 2020 - Punteros.pptx"
prerrequisitos:
  - "./../practica-04-arreglos/teoria.md"
  - "registros (record)"
  - "parámetros por valor y por referencia"
relacionados:
  - "./ejercicios.md"
  - "../practica-06-listas/teoria.md"
codigo_relacionado:
  - "../../../codigo/soluciones/practicas/practica-05-punteros/5.pas"
  - "../../../codigo/soluciones/practicas/practica-05-punteros/Ejemplo3.pas"
---

> [!NOTE]
> Este archivo no existía como tal: se construyó integrando el PDF de la práctica (`Redictado CADP 2020 - Práctica 5 - Punteros.pdf`), dos apuntes con texto extraíble (`Conceptual.docx`, `EP6 2020 - Punteros.pptx`) y ocho imágenes de apuntes manuscritos/capturas (`recursos/imagenes/practicas/practica-05-punteros/apunte-*.png`). Cada sección indica de qué fuente sale.

# Punteros

## Memoria estática y memoria dinámica

**Memoria estática**: es la memoria que se reserva al declarar una variable de la forma habitual (`var x: integer`), en el momento de compilar/iniciar el programa, y que **no cambia de tamaño** durante la ejecución. El compilador puede verificar los tipos en tiempo de compilación. Su límite en Pascal es 64 KB por estructura (ver ejercicio 6).

**Memoria dinámica**: es memoria que se reserva y libera **durante la ejecución** del programa, a pedido explícito (con `new`) y hasta que se libera explícitamente (con `dispose`). No existe un espacio reservado de antemano para ella; su ventaja es que permite que una estructura crezca o decrezca en tiempo de ejecución, algo que una estructura estática no puede hacer.

> Resumen de `Conceptual.docx` (apunte propio, transcripto con edición mínima de redacción):
>
> La memoria estática (*stack*) es una memoria física del ordenador que se reserva con anticipación y no cambia durante la ejecución del programa. Esto permite comprobar los tipos en tiempo de compilación. Lo malo es su rigidez: esas estructuras no pueden crecer ni decrecer durante la ejecución.
>
> La memoria dinámica (*heap*) se reserva y se libera durante la ejecución del programa; no hay espacio reservado de antemano. Lo bueno es su flexibilidad: las estructuras dinámicas sí pueden crecer o decrecer en tiempo de ejecución.
>
> **Toda variable declarada en la sección `var` del programa principal (o de un módulo) es siempre de memoria estática** — incluida la variable puntero en sí misma. Lo único que vive en memoria dinámica es lo que hay *del otro lado* del puntero, después de un `new`.

## Variable puntero

Una variable puntero **no guarda un dato convencional**: guarda la **dirección de memoria** de una variable dinámica. Se declara con `^` delante del tipo al que apunta:

```Pas
type
  puntero_entero = ^integer;
var
  p: puntero_entero;
```

`p` (la variable puntero en sí) es siempre estática; lo que `p` señala —a lo que se accede con `p^`— es dinámico, y sólo existe después de un `new(p)`.

> `Conceptual.docx`: *"Es un tipo de variable usada para almacenar una dirección de memoria dinámica de otra variable, en lugar de un dato convencional. [...] No hay que confundir la variable apuntada con el puntero."*

Tres formas de darle un valor a un puntero:

1. Asignarle `nil` (no apunta a nada — "es más que vacío", no es lo mismo que "vacío").
2. Pedir memoria nueva con `new`.
3. Copiar el valor de otro puntero (`p := q`), con lo que ambos quedan apuntando **a la misma celda** (alias).

> [!WARNING]
> `p := q` (copiar el puntero, quedan apuntando a lo mismo) **no es lo mismo** que `p^ := q^` (copiar el contenido de la celda de `q` sobre la celda de `p`, sin tocar a qué apunta cada uno). Confundir ambas es el error conceptual más común de esta unidad — ver los "Ejemplo 1/2" más abajo.

## `new` y `dispose`

- **`new(p)`** reserva un bloque de memoria dinámica del tamaño del tipo apuntado, y hace que `p` apunte a ese bloque. *("Es parecido a inicializar el puntero", `Conceptual.docx`).*
- **`dispose(p)`** libera esa memoria dinámica (el dato apuntado deja de existir; `p` sigue teniendo la dirección vieja, pero ya no es válida — queda "con basura"). *("El dispose elimina lo apuntado por p y ahora p tiene basura", `Conceptual.docx`).*

> [!WARNING]
> Después de un `dispose(p)`, usar `p^` es un error: la memoria fue liberada. Si además otro puntero `q` apuntaba a la misma celda (por ser alias de `p`), `q^` también queda inválido, aunque a `q` "no se le hizo nada" explícitamente.

## Tamaño de los tipos (`sizeof`)

Varios ejercicios usan la función `sizeof(x)`, que devuelve cuántos bytes ocupa `x` en memoria. Tabla de referencia (PDF, página 1, "para un compilador de Pascal típico"):

| Tipo | Cantidad de bytes |
|---|---|
| Entero | 2 bytes |
| Real | 4 bytes |
| Char | 1 byte |
| String | tantos bytes como indique la longitud del `string` + 1 |
| Record | la suma de las longitudes de los campos del registro |
| Puntero | 4 bytes |
| Boolean | 1 byte |

`sizeof(p)` (con `p` puntero) siempre da 4, sin importar a qué apunte ni si `p` es `nil`: es el tamaño de la *dirección*, no del dato apuntado. `sizeof(p^)` sí depende del tipo apuntado (y, si es un `string`, de cuánto se cargó realmente).

## Punteros como parámetros: alias, `dispose` y paso por valor/referencia

Cinco programas de ejemplo de la cátedra (`EP6 2020 - Punteros.pptx`, transcriptos aquí porque el archivo original sólo tiene texto plano sin las imágenes de memoria; la explicación de qué imprime cada uno reconstruye la lógica a partir de las anotaciones de las diapositivas).

**Ejemplo 1 — alias entre dos punteros, y acceso después de `dispose`:**

```Pas
Program ejemplo;
Type
  Ptro = ^integer;
Var
  p1, p2: Ptro;
Begin
  new (p1);
  p1^ := 23;
  new (p2);
  p2^ := 44;
  p2 := p1;        { p2 deja de apuntar a su celda (con 44, que queda inaccesible) y pasa a apuntar a la misma celda que p1 }
  write (p2^);      { imprime 23: p2 ahora apunta a la celda de p1 }
  dispose (p2);     { libera la celda compartida por p1 y p2 }
  write(p1^);       { ERROR: p1 apunta a una celda que ya se liberó (p2 y p1 eran alias) }
End.
```

**Ejemplo 2 — lo mismo con un `record`:**

```Pas
Program ejemplo;
Type
  casa = record
    met_cua: real;
    cant_hab: integer;
  end;
  punt_casa = ^casa;
Var
  p1, p2: punt_casa;
Begin
    new (p1);
    p1^.met_cua := 125.50;
    p1^.cant_hab := 5;
    p2:= p1;          { alias: p2 apunta a la misma celda que p1 }
    p2^.cant_hab := 6; { modifica la celda compartida }
    write (p1^.cant_hab);   { imprime 6, porque p1 y p2 comparten la celda }
    dispose (p2);           { libera la celda compartida }
    write(p1^.met_cua);     { ERROR: la celda ya no existe }
End.
```

**Ejemplo 3 — puntero como parámetro por valor, el dato apuntado es compartido:**

```Pas
Program ejemplo;
Type
  punt = ^integer;
Procedure suma (p1:punt);
Begin
  p1^ := p1^ + 1;
End;
Var
  p: punt;
Begin
  new (p);
  p^ := 23;
  suma(p);
  write(p^);   { imprime 24 }
End.
```

`p1` es una **copia** de `p` (parámetro por valor), pero el dato apuntado por ambos es el mismo. Modificar `p1^` dentro de `suma` también modifica lo que ve `p^` en el programa principal.

**Ejemplo 4 — igual, pero adentro se hace `new(p1)`:**

```Pas
Program ejemplo;
Type
  punt = ^integer;
Procedure suma (p1:punt);
Begin
  p1^  := p1^ + 1;  { modifica la celda compartida con p: pasa a valer 24 }
  new(p1);          { p1 (copia local) ahora apunta a OTRA celda nueva; esto NO afecta a p }
End;
Var
  p: punt;
Begin
  new (p);
  p^ := 23;
  suma(p);
  write(p^);   { imprime 24 }
End.
```

Como `p1` se pasó **por valor**, reasignar el puntero `p1` con `new(p1)` sólo cambia la copia local; `p` en el programa principal sigue apuntando a la celda original (que quedó en 24 por la primera línea de `suma`).

**Ejemplo 5 — igual, pero `p1` se pasa por referencia (`var`):**

```Pas
Program ejemplo;
Type
  punt = ^integer;
Procedure suma (VAR p1:punt);
Begin
  p1^  := p1^ + 1;   { celda compartida pasa a 24 }
  new(p1);           { como p1 es var, esto SÍ cambia a qué apunta p en el programa principal }
  p1^:= 44;          { escribe 44 en la celda nueva }
End;
Var
  p: punt;
Begin
  new (p);
  p^ := 23;
  suma(p);
  write(p^);   { imprime 44 }
End.
```

Al recibir `p1` por referencia, `p1` **es** `p` (no una copia): reasignar el puntero adentro de `suma` con `new(p1)` mueve también a `p` hacia la celda nueva, y el `44` final sí se ve desde el programa principal.

## Agregar un nodo al principio de una lista (con diagrama de memoria)

De un apunte manuscrito ([`apunte-agregar-adelante-lista-diagrama.png`](../../../recursos/imagenes/practicas/practica-05-punteros/apunte-agregar-adelante-lista-diagrama.png)): diagrama de memoria mostrando un puntero `P` sobre una pila de celdas con direcciones (`33H`, `34H`, `35H`, ...) y valores (`80`, `55`, `33`, `22`, ...), junto con el procedimiento para agregar un nodo nuevo al principio de una lista y uno para imprimirla:

```Pas
procedure agregarAdelante(var L: lista; num: integer);
var
    nue: lista;
begin
    new (nue);       {Creo un nodo}
    nue^.dato := num; {Cargo el dato}
    nue^.sig := L;    {Realizo el enlace}
    L := nue;         {Actualizo el primero}
end;

Procedure imprimirLista (p: listaE);
Begin
  while (p <> nil) do
    begin
      write (p^.dato);
      p := p^.sig;
    end;
End;
```

Esta es la misma técnica que `Agregar_un_Elemento_al_Principio_de_la_Lista` en [`../practica-06-listas/teoria.md`](../practica-06-listas/teoria.md) (ahí llamada `AgregarAdelante`, con un `record` `persona` en vez de un entero).

## Vector de punteros a `string` (ejercicio 6 del PDF)

El ejercicio 6 pide una estructura para 2500 nombres de ciudad, y sugiere un vector de punteros (`ArrPunteros = array[1..2500] of Puntero`, con `Puntero = ^Nombre`). Un comentario/respuesta de apunte propio ([`apunte-comentario-leer-y-cargar-punteros.png`](../../../recursos/imagenes/practicas/practica-05-punteros/apunte-comentario-leer-y-cargar-punteros.png)) propone:

```Pas
procedure leerYcargar(var v: arrPunteros);
begin
    for i:=1 to 2500 do begin
        read(nombre);
        v[i]^:=nombre;
    end;
end;
```

> [!WARNING]
> Tal como está transcripto, a este módulo le falta `new(v[i])` **antes** de `v[i]^:=nombre`: cada elemento del vector es un puntero individual (`Puntero = ^Nombre`) y cada uno necesita su propia reserva de memoria dinámica antes de poder escribir en `v[i]^`. Sin el `new`, `v[i]` no apunta a ninguna celda válida todavía. Se deja la observación porque es exactamente el tipo de error que este ejercicio busca hacer notar (ver también el ejercicio 6.b.2 en [`ejercicios.md`](./ejercicios.md), que pide explícitamente "reservar memoria para los 2500 nombres" como paso separado de la carga).

## Cálculo de memoria: ejemplo resuelto a mano (ejercicio 5 del PDF)

Tres capturas de un mismo apunte manuscrito resolviendo el ejercicio 5 (`Alocacion_Dinamica`) paso a paso: [`apunte-memoria-estatica-dinamica-alocacion.png`](../../../recursos/imagenes/practicas/practica-05-punteros/apunte-memoria-estatica-dinamica-alocacion.png), [`...-calculo.png`](../../../recursos/imagenes/practicas/practica-05-punteros/apunte-memoria-estatica-dinamica-calculo.png), [`...-resultado.png`](../../../recursos/imagenes/practicas/practica-05-punteros/apunte-memoria-estatica-dinamica-resultado.png).

El registro `Empleado` ocupa `1 (char) + 26 (string[25]) + 41 (string[40]) + 4 (real) = 72` bytes. El puntero `PtrEmpleado` ocupa 4 bytes (como todo puntero). El apunte descompone el cálculo en estática vs. dinámica:

- **Antes de cualquier `new`** (punto I-II del enunciado): sólo hay memoria estática en juego — la variable `alguien: Empleado` (72 B) y la variable `PtrEmpleado` en sí misma (4 B, el puntero). Leer `alguien.apellido` no cambia la cantidad de memoria disponible: sólo llena bytes ya reservados.
- **Después de `New(PtrEmpleado)`** (punto III): se reserva un bloque dinámico nuevo de 72 B (el tamaño de `Empleado`), al que pasa a apuntar `PtrEmpleado`.
- **Después de leer los campos de `PtrEmpleado^`** (punto IV): la cantidad de memoria disponible no vuelve a cambiar (leer/escribir campos ya reservados no consume memoria adicional).
- **Después de `Dispose(PtrEmpleado)`** (punto V): se libera el bloque dinámico de 72 B. La memoria estática comprometida por el programa se mantiene en `4 B (puntero) + 72 B (alguien)`; la memoria dinámica neta al final vuelve a `0 B`.

Resultado final anotado a mano: **`ESTÁTICA: 4B (puntero) + 72B (alguien)`** / **`DINÁMICA: 0B`** — coincide con los comentarios de la solución transcripta en [`ejercicios.md`](./ejercicios.md#ejercicio-5).

## Preguntas de repaso (con respuesta)

Tres capturas tipo *quiz* de los apuntes, con las opciones tal como aparecen en la fuente.

**¿Se puede comparar el contenido de dos variables dinámicas comparando los punteros?** ([`apunte-quiz-comparar-punteros.png`](../../../recursos/imagenes/practicas/practica-05-punteros/apunte-quiz-comparar-punteros.png))

```Pas
Program punteros;
Type
  pun = ^integer;
Var
  p,q:pun;
Begin
  new(p);
  new(q);
  p^:=10;
  q^:=10;
  if (p = q) then
    write('Los punteros tienen el mismo contenido');
end.
```

Opciones: a) el código es correcto — b) incorrecto, no se puede declarar un puntero a `integer` — c) incorrecto, para comparar contenido la condición debe ser `p^ = q^` — d) incorrecto, antes del `if (p = q)` se debe chequear que `p` sea distinto de `nil` — e) incorrecto, no se pueden comparar punteros, sólo sus valores.

Según la semántica de Pascal, la respuesta correcta es la **c)**: `p` y `q` son dos celdas dinámicas distintas (direcciones distintas, ej. `62H` y `83H` en el diagrama de la fuente) que casualmente contienen el mismo valor (`10`); comparar `p = q` compara **direcciones**, no contenido, así que da `false` aunque ambas celdas tengan el mismo dato. Para comparar contenido hace falta `p^ = q^`.

**Declaración simple sin `new`** ([`apunte-quiz-declaracion-puntero-verdadero-falso.png`](../../../recursos/imagenes/practicas/practica-05-punteros/apunte-quiz-declaracion-puntero-verdadero-falso.png)):

```Pas
Program prueba;
type
    pun = ^integer;
var
    p : pun;
begin
    ...
end.
```

Según las marcas manuscritas visibles en la imagen (V/F a la izquierda de cada opción): **a)** "se puede hacer `read(p^)`" → **F**. **b)** "se puede hacer `read(p)`, pero no `write(p^)`" → **F**. **c)** "se puede hacer `new(p)`" → **V**. **d)** "se puede hacer `read(p^+4)`" → **F**. **e)** "se puede hacer `new(p^)`" → **F**. Es decir: sin `new` previo, `p` no apunta a ninguna celda válida — lo único seguro que se puede hacer es, justamente, reservarle memoria con `new(p)`.

**Lectura por teclado a través de un puntero recién creado** ([`apunte-quiz-lectura-puntero.png`](../../../recursos/imagenes/practicas/practica-05-punteros/apunte-quiz-lectura-puntero.png)):

```Pas
Program ejemplo;
type
    pint = ^integer;
var
    pun : pint;
    num : integer;
begin
    read(num);
    new(pun);
    pun^:= num;
    writeln(pun^);
end.
```

> [!WARNING]
> La imagen fuente tiene la palabra "ERROR" resaltada junto a la línea `pun^:= num;`, pero esa línea es válida (`new(pun)` ya se ejecutó antes, así que `pun^` es una celda existente y asignarle un `integer` es correcto). No se pudo determinar con certeza, sólo a partir de la imagen, si esa marca señala un distractor de una de las opciones de respuesta o alguna otra aclaración de la clase. Con el código tal como está escrito, el programa es correcto y la respuesta a "¿qué hace el programa?" es **"imprime el valor leído por teclado"**.

## Fuera de tema en esta carpeta de imágenes

La imagen [`apunte-correccion-funcion-descomponer.png`](../../../recursos/imagenes/practicas/practica-05-punteros/apunte-correccion-funcion-descomponer.png) — pese al nombre del archivo, que sugeriría una corrección sobre una función `descomponer` — en realidad contiene una nota corta sobre el **formato de un informe de productos vendidos** ("Cant. Total de prod. Vendidos", "Monto Total", listado "Nombre, precio, cantidad"), sin relación con punteros. Es más afín, temáticamente, al estilo de "corte de control"/reportes de las Prácticas 4 y 7; no se fuerza su inclusión en esta teoría. Se deja esta constancia para no omitir el archivo silenciosamente.
