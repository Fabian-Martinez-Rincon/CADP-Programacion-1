---
id: "CADP-GLOSARIO"
titulo: "Glosario de CADP / Algoritmos y Programación 1"
slug: "glosario"
tipo: "glosario"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "generado"
---

# Glosario

Términos usados a lo largo de la materia, en el orden aproximado en que se ven durante la cursada. Cada uno enlaza a la explicación completa cuando existe.

## Algoritmo

Secuencia finita y ordenada de pasos que resuelve un problema. Se expresa en pseudocódigo antes de traducirse a Pascal.

## Variable

Espacio de memoria identificado por un nombre que almacena un valor de un tipo de dato determinado durante la ejecución del programa.

## Tipo de dato

Clasificación del valor que puede tomar una variable. Ver [Práctica 0 — Tipos de datos](practicas/practica-00-tipos-de-datos/README.md).

- **Simple**: `integer`, `real`, `char`, `boolean`, `string`.
- **Subrango**: un rango restringido de un tipo simple ordinal (por ejemplo `1..31`).
- **Compuesto / estructurado**: agrupa varios valores bajo un mismo nombre — [registro](#registro-record), [arreglo](#arreglo-vector), [lista](#lista-enlazada).

## Estructura de control

Mecanismo que determina el orden en que se ejecutan las instrucciones. Ver [Práctica 1 — Estructuras de control](practicas/practica-01-estructuras-de-control/README.md).

- **Secuencial**: una instrucción después de otra.
- **Condicional** (`if`/`case`): ejecuta un camino u otro según una condición.
- **Repetitiva** (`for`, `while`, `repeat...until`): repite un bloque mientras se cumple (o hasta que se cumple) una condición.

## Módulo / Modularización

Dividir un programa en unidades más chicas (funciones y procedimientos) que resuelven una parte del problema, para facilitar la lectura, la reutilización y la corrección. Ver [Práctica 2 — Funciones](practicas/practica-02-funciones/README.md).

## Función

Módulo que devuelve un único valor a través de su propio nombre y puede usarse dentro de una expresión.

## Procedimiento

Módulo que no devuelve un valor por su nombre; comunica resultados a través de parámetros por referencia.

## Parámetro por valor

El módulo recibe una copia del valor del argumento: modificar el parámetro dentro del módulo no afecta a la variable original del llamador.

## Parámetro por referencia (`var`)

El módulo recibe la dirección de memoria del argumento: modificar el parámetro sí modifica la variable original del llamador. Se usa para que un módulo devuelva más de un resultado.

## Registro (`record`)

Tipo de dato estructurado que agrupa campos de igual o distinto tipo bajo un mismo nombre, accesibles con el operador `.`. Ver [Práctica 3 — Registros](practicas/practica-03-registros/README.md).

## Arreglo / Vector (`array`)

Estructura de datos **homogénea**, de **acceso directo** y de tamaño **estático**: todos sus elementos son del mismo tipo y se accede a cada uno por su posición (`v[i]`). Ver [Práctica 4 — Arreglos](practicas/practica-04-arreglos/teoria.md).

## Corte de control

Técnica para procesar una secuencia de datos ordenada, detectando cuándo cambia el valor de un campo "de control" (por ejemplo, procesar ventas agrupadas por día) para acumular o informar resultados por grupo.

## Memoria estática

Memoria cuyo tamaño se determina en tiempo de compilación y no cambia durante la ejecución del programa (las variables declaradas en el `var` del programa principal). Ver [ejemplo resuelto: memoria estática, dinámica y tiempo de ejecución](resumenes/memoria-estatica-dinamica-tiempo-ejecucion.md).

## Memoria dinámica

Memoria que se reserva y libera durante la ejecución del programa con `new()`/`Dispose()`, típicamente para estructuras cuyo tamaño no se conoce de antemano (listas enlazadas).

## Puntero

Variable cuyo valor es la dirección de memoria de otra variable (`^tipo`). Permite construir estructuras dinámicas. Ver [Práctica 5 — Punteros](practicas/practica-05-punteros/README.md).

## Lista enlazada

Estructura de datos **dinámica**, de **acceso secuencial**, formada por nodos que contienen un dato y un puntero al siguiente nodo. A diferencia del arreglo, no tiene un tamaño fijo declarado de antemano. Ver [Práctica 6 — Listas](practicas/practica-06-listas/teoria.md) y la comparación [Vectores vs. Listas](practicas/practica-06-listas/vectores-vs-listas.md).

## Nodo

Cada elemento de una lista enlazada: un registro con al menos un campo de dato y un campo puntero (`sig`) al siguiente nodo (o `nil` si es el último).

## Tiempo de ejecución (unidades de tiempo / "ut")

Medida relativa (no en segundos reales) de cuántas operaciones elementales ejecuta un programa, usada en esta cátedra para comparar la eficiencia de dos soluciones. Ver [ejemplos de memoria y tiempo](resumenes/ejemplos-memoria-y-tiempo.md).

## Autoevaluación

Cuestionario de opción múltiple / verdadero-falso, con corrección automática, que la cátedra pone a disposición por tema para que el estudiante se autoevalúe antes del parcial o el final. Ver [conocimiento/autoevaluaciones/](autoevaluaciones/README.md).

## Parcial / Final

Evaluaciones formales de la cátedra. El archivo histórico de exámenes de años anteriores (enunciado + solución, cuando se conserva) está en [`Parciales/`](../Parciales/README.md) y [`Finales/`](../Finales/README.md), fuera de `conocimiento/` porque ya tenían su propia organización por instancia de examen.
