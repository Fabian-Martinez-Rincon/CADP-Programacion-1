---
id: "CADP-AUTOEVAL-10-listas"
titulo: "Autoevaluación 10: listas"
slug: "listas"
tipo: "ejercicio"
tema: "listas"
subtemas:
  - "listas-enlazadas"
  - "recorridos"
  - "insercion"
  - "paso-por-referencia"
  - "new"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../recursos/imagenes/autoevaluaciones/autoevaluacion-10-listas.png"
relacionados:
  - "../practicas/practica-06-listas/README.md"
  - "../practicas/practica-05-punteros/README.md"
---

# Autoevaluación 10: listas

Autoevaluación de la LMS con 5 preguntas de selección múltiple. Transcripción fiel de los enunciados, el código y las respuestas marcadas como correctas (check verde) en la captura original: [`autoevaluacion-10-listas.png`](../../recursos/imagenes/autoevaluaciones/autoevaluacion-10-listas.png).

> [!NOTE]
> No se transcribe el bloque "Resumen de la corrección" (puntaje y tiempo de un intento particular de un alumno): es metadato de un intento individual, no contenido pedagógico reutilizable. En las preguntas 1 a 4, el sistema evalúa la selección como todo-o-nada.

## Pregunta 1

El siguiente módulo debe retornar el valor máximo de una lista sin orden alguno:

```pascal
program verMaximos;
type
  lista = ^nodo;
  nodo = record
    valor : integer;
    siguiente : lista;
  end;
function maximo(L : lista) : integer;
var
  max : integer;
begin
  max := -1;
  while (L <> NIL) do
    if (L^.valor > max) then begin
      max := L^.valor;
      L := L^.sig;
    end;
  maximo := max;
end;
```

Marque todas las opciones correctas:

- [ ] El módulo es incorrecto porque se pierde el puntero al inicio de la lista
- [ ] El módulo es correcto
- [ ] El módulo es incorrecto porque recorre toda la lista en vez de detenerse al encontrar el máximo
- [x] **El módulo es incorrecto porque podría quedar en un bucle infinito** (respuesta correcta)
- [ ] El módulo es incorrecto porque debe inicializarse la variable max en un valor alto

> [!NOTE]
> `L := L^.sig;` está dentro del `if`, no del `while`: si en algún nodo `L^.valor > max` es falso, `L` nunca avanza y el `while (L <> NIL)` no termina nunca.

## Pregunta 2

El siguiente módulo debe retornar el valor mínimo de una lista ordenada de menor a mayor:

```pascal
program verMinimos;
type
  lista = ^nodo;
  nodo = record
    valor : integer;
    siguiente : lista;
  end;
function minimo(L : lista) : integer;
var
  min : integer;
begin
  min := 32768;
  while (L <> NIL) do begin
    if (L^.valor <  min) then
      min := L^.valor;
    L := L^.sig;
  end;
  minimo := min;
end;
```

Marque todas las opciones correctas:

- [ ] El módulo es incorrecto porque se pierde el puntero al inicio de la lista
- [ ] El módulo es incorrecto porque falla cuando la lista está vacía
- [ ] El módulo es incorrecto porque podría retornar basura
- [x] **El módulo funciona, pero es ineficiente porque recorre toda la lista** (respuesta correcta)
- [ ] El módulo funciona y es eficiente

> [!NOTE]
> Como la lista está ordenada de menor a mayor, el mínimo siempre es el valor del primer nodo; recorrerla entera para encontrarlo es innecesario.

## Pregunta 3

Dos alumnos deben realizar un programa que imprima el valor del último nodo de la lista. Ellos han propuesto las siguientes soluciones:

**Opción 1:**

```pascal
program opcion1;
type
  lista = ^nodo;
  nodo = record
    valor : integer;
    siguiente : lista;
  end;

procedure buscarUltimo(L : lista);
begin
  while (L^.sig <> NIL) do
    L := L^.sig;
end;

var
  L : lista;
begin
  cargarLista(L); //carga la lista
  if (L<> NIL) then begin
    buscarUltimo(L);
    writeln('El ultimo valor de la lista es ',L^.valor);
  end.
end.
```

**Opción 2:**

```pascal
program opcion2;
type
  lista = ^nodo;
  nodo = record
    valor : integer;
    siguiente : lista;
  end;

var
  L : lista;
begin
  cargarLista(L); //carga la lista
  while (L^.sig <> NIL) do
    L := L^.sig;
  writeln('El ultimo valor de la lista es ',L^.valor);
end.
```

Marque todas las opciones correctas:

- [x] **La opción 1 es incorrecta porque la lista no se pasa por referencia** (respuesta correcta)
- [ ] La opción 1 es incorrecta porque puede fallar cuando la lista está vacía
- [ ] La opción 2 es correcta pero ineficiente
- [x] **La opción 2 es incorrecta porque falla cuando la lista está vacía** (respuesta correcta)
- [ ] Las dos opciones son correctas

> [!NOTE]
> En la opción 1, `buscarUltimo(L : lista)` recibe `L` por valor: el avance interno de `L` no se refleja en el `L` del programa principal, que sigue apuntando al primer nodo. En la opción 2, si la lista está vacía (`L = nil`), `L^.sig` se evalúa sobre un puntero nulo antes de comprobar nada.

## Pregunta 4

Dado el siguiente módulo, que agrega un nodo al inicio de la lista:

```pascal
program listas;
type
  lista = ^nodo;
  nodo = record
    valor : integer;
    sig : lista;
  end;
procedure agregarAdelante(var L : lista; dato : integer);
var
  aux : nodo;
begin
  new (aux);
  aux.valor := dato;
  aux.sig := L;
  L := aux;
end;
```

Marque todas las opciones correctas:

- [ ] El módulo es correcto, pero no es necesario pasar la lista por referencia
- [ ] El módulo es correcto, pero sólo funciona si la lista L no está vacía
- [x] **El módulo es incorrecto porque no se puede hacer un new sobre la variable aux** (respuesta correcta)
- [ ] El módulo es incorrecto porque no se puede asignar dato a aux.valor.
- [ ] El módulo es incorrecto porque la lista quedaría mal formada

> [!NOTE]
> `aux` está declarada `nodo` (un registro), no `lista` (un puntero); `New` sólo puede aplicarse sobre una variable de tipo puntero.

## Pregunta 5

Dado el siguiente módulo, que agrega un nodo al inicio de la lista:

```pascal
program listas;
type
  lista = ^nodo;
  nodo = record
    valor : integer;
    sig : lista;
  end;

procedure agregarAdelante(L : lista; var dato : integer);
var
  aux : lista;
begin
  aux^.valor := dato;
  new (aux);
  L := aux;
  aux^.sig := L;
end;
```

Marque las opciones correctas:

- [x] **El parámetro L debe pasarse por referencia** (respuesta correcta)
- [x] **El parámetro dato debe pasarse por valor** (respuesta correcta)
- [x] **Debe realizarse el new(aux) antes de ejecutar la operación aux^.valor := dato;** (respuesta correcta)
- [x] **La lista queda mal formada porque se pierde el puntero al inicio de la lista al hacer L := aux** (respuesta correcta)
- [ ] El módulo es correcto

> [!NOTE]
> Motivos, en orden: (1) `L` se pasa por valor, así que el nuevo primer nodo no se ve reflejado en el programa que llama; (2) `dato` sólo se lee, no hace falta pasarlo por referencia; (3) `aux^.valor := dato;` desreferencia `aux` antes de reservarle memoria con `new`; (4) al hacer `L := aux;` antes de `aux^.sig := L;`, el nodo nuevo termina enlazado a sí mismo y se pierde el resto de la lista original (el orden correcto sería enlazar primero — `aux^.sig := L;` — y recién después actualizar `L := aux;`).
