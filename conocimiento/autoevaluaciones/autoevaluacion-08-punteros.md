---
id: "CADP-AUTOEVAL-08-punteros"
titulo: "Autoevaluación 8: punteros"
slug: "punteros"
tipo: "ejercicio"
tema: "punteros"
subtemas:
  - "punteros"
  - "memoria-dinamica"
  - "new"
  - "listas-enlazadas"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../recursos/imagenes/autoevaluaciones/autoevaluacion-08-punteros.png"
relacionados:
  - "../practicas/practica-05-punteros/README.md"
  - "../practicas/practica-06-listas/README.md"
---

# Autoevaluación 8: punteros

Autoevaluación de la LMS con 5 preguntas de opción múltiple/selección múltiple. Transcripción fiel de los enunciados, el código y las respuestas marcadas como correctas (check verde) en la captura original: [`autoevaluacion-08-punteros.png`](../../recursos/imagenes/autoevaluaciones/autoevaluacion-08-punteros.png).

> [!NOTE]
> No se transcribe el bloque "Resumen de la corrección" (puntaje y tiempo de un intento particular de un alumno): es metadato de un intento individual, no contenido pedagógico reutilizable. En las preguntas 3 a 5, el sistema evalúa la selección como todo-o-nada.

## Pregunta 1

Marque las proposiciones verdaderas:

- [ ] Una variable de tipo puntero solo ocupa memoria dinámica.
- [x] **La operación New reserva memoria dinámica en tiempo de ejecución.** (respuesta correcta)
- [ ] La variable dinámica referenciada por un puntero siempre ocupa 4 bytes.

## Pregunta 2

Analice el código y marque la opción verdadera:

```pascal
program ejercicio2;
type
  puntero = ^integer;
var
  p, q: puntero;

begin
  p:= nil;
  new (q);
  q^:= 200;
  p := q;
  p^:= 150;
  writeln(q^); {1}
  writeln(p^); {2}
  new(q);
  q^:= 300;
  q^ := p^;
  p:= nil;
  writeln(q^); {3}
end.
```

- [ ] En {1} imprime 200 / En {2} imprime 150 / En {3} imprime 300
- [ ] En {1} imprime 200 / En {2} imprime 150 / En {3} imprime 150
- [x] **En {1} imprime 150 / En {2} imprime 150 / En {3} imprime 150** (respuesta correcta)

> [!NOTE]
> Tras `p := q;`, `p` y `q` apuntan a la misma celda; `p^:= 150;` la modifica, por lo que `q^` también pasa a valer 150 (de ahí {1} y {2}). El `new(q)` posterior hace que `q` apunte a una celda nueva, pero `p` sigue apuntando a la celda vieja (con 150). `q^:= 300;` y luego `q^ := p^;` sobrescriben esa celda nueva con el valor de `p^` (150), por lo que {3} también imprime 150.

## Pregunta 3

Marque las proposiciones verdaderas:

- [ ] La creación de una lista L vacía, se hace mediante la instrucción New(L).
- [x] **En una búsqueda secuencial en una lista sin orden, si el elemento a buscar no se encuentra en la lista, se recorrerá siempre la lista hasta el final.** (respuesta correcta)
- [ ] Para realizar un recorrido completo de una lista, siempre se usa la estructura de control FOR.

## Pregunta 4

Marque las proposiciones verdaderas:

- [x] **Siempre es posible Agregar un elemento en una lista.** (respuesta correcta)
- [ ] En una operación de Agregar al final siempre se debe recorrer la lista hasta llegar al último nodo.
- [ ] En una operación de Agregar al final nunca se modifica el puntero inicial de la lista.

## Pregunta 5

Marque las proposiciones verdaderas para la operación de Borrar un elemento en una lista:

- [ ] Siempre es posible borrar un elemento de una lista.
- [ ] Para borrar un elemento en una lista, es necesario al menos realizar un desplazamiento de un elemento.
- [x] **Supongamos que la lista tiene 2 nodos, al eliminar el último nodo, el nodo que queda tendrá valor Nil en su enlace al siguiente.** (respuesta correcta)
