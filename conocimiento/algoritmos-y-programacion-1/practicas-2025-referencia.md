---
id: "AYP1-PRACTICAS-2025-REF"
titulo: "Guías 2025 de referencia (sin resolver)"
slug: "practicas-2025-referencia"
tipo: "ejercicio"
tema: "arreglos-y-listas"
subtemas:
  - "registros"
  - "corte-de-control"
  - "arreglos"
  - "vectores"
  - "listas-enlazadas"
nivel: "avanzado"
lenguajes:
  - "Pascal"
estado: "sin-solucion"
origen: "convertido"
fuentes:
  - archivo: "../../fuentes/algoritmos-y-programacion-1/practicas-2025/Practica 3 - Algoritmos y Programación I 2025.pdf"
    paginas: "1-4"
  - archivo: "../../fuentes/algoritmos-y-programacion-1/practicas-2025/Practica 4 - Algoritmos y Programación I 2025.pdf"
    paginas: "1-3"
  - archivo: "../../fuentes/algoritmos-y-programacion-1/practicas-2025/Practica 5 - Algoritmos y Programación I 2025.pdf"
    paginas: "1-2"
  - archivo: "../../fuentes/algoritmos-y-programacion-1/practicas-2025/Practica 6 - Algoritmos y Programación I 2025.pdf"
    paginas: "1-3"
  - archivo: "../../fuentes/algoritmos-y-programacion-1/practicas-2025/Practica 7 - Algoritmos y Programación I 2025.pdf"
    paginas: "1-2"
prerrequisitos:
  - "practica 7 (registros)"
relacionados:
  - "./README.md"
  - "./practica-7/README.md"
---

# Guías 2025 de referencia (sin resolver)

Estos 5 PDF corresponden a las prácticas 3 a 7 del cursado **2025** (un "Redictado", según indica la propia Práctica 3 de esa serie) de Algoritmos y Programación I. Se conservan en `fuentes/algoritmos-y-programacion-1/practicas-2025/` como **guías de referencia sin resolver**: no existe ningún archivo `.pas` en `codigo/soluciones/` asociado a estos enunciados, y no se inventan soluciones para ellos en esta conversión.

> [!NOTE]
> A diferencia de las prácticas 2026 documentadas en `practica-1/` a `practica-7/` de este track (que llegan hasta registros y `string`), la serie 2025 **avanza más**: incorpora corte de control, arreglos (vectores) y listas enlazadas — estructuras de datos que no se tratan en ninguna de las 7 clases teóricas 2026 leídas para esta conversión ni en las prácticas 2026 con solución. Por eso se catalogan aparte, como material de referencia para cuando la cursada 2026 llegue a esos temas, en vez de mezclarse con las prácticas 1-7 ya resueltas.

## Practica 3 (2025) — Registros y Corte de Control

- **Fuente:** [`Practica 3 - Algoritmos y Programación I 2025.pdf`](<../../fuentes/algoritmos-y-programacion-1/practicas-2025/Practica 3 - Algoritmos y Programación I 2025.pdf>) (4 páginas, 11 ejercicios)
- Retoma el mismo programa `Registros`/`alumno` de la Práctica 7 (2026) como ejercicio 1, agrega un prisma rectangular "elija una estructura de datos adecuada" (ejercicio 2, sin la ayuda de fórmulas explícitas que sí tiene la versión 2026), y siete problemas de registros con lectura hasta un centinela (casamientos, escuelas, telefonía celular, bicicleterías, radares). A partir del ejercicio 8 introduce explícitamente la técnica de **corte de control** (procesar datos ya agrupados/ordenados por una clave, informando subtotales por grupo): autos por marca, participantes de un concurso por continente, centros de investigación por universidad, microprocesadores por marca de fabricante.

## Practica 4 (2025) — Estructura de Datos Arreglos I

- **Fuente:** [`Practica 4 - Algoritmos y Programación I 2025.pdf`](<../../fuentes/algoritmos-y-programacion-1/practicas-2025/Practica 4 - Algoritmos y Programación I 2025.pdf>) (3 páginas, 7 ejercicios)
- Primera práctica de la serie 2025 dedicada a **arreglos (vectores)**: declaración con `type vnums = array[1..10] of integer`, preguntas de rastreo de código sobre cómo queda un vector tras varios `for`, recorridos (de punta a punta, invertido, desde la mitad, entre dos posiciones dadas), y módulos clásicos sobre un vector de 100 enteros (`posicion`, `intercambio`, `sumaVector`, `promedio`, `elementoMaximo`, `elementoMinimo`) que luego se combinan en programas mayores (250 números, 519 alumnos, 2500 empleados).

## Practica 5 (2025) — Estructura de Datos Arreglos II

- **Fuente:** [`Practica 5 - Algoritmos y Programación I 2025.pdf`](<../../fuentes/algoritmos-y-programacion-1/practicas-2025/Practica 5 - Algoritmos y Programación I 2025.pdf>) (2 páginas, 6 ejercicios)
- Continúa con arreglos: búsqueda de un valor en un vector (primero sin orden, luego asumiendo un vector ordenado ascendentemente), un ejercicio explícito de **ordenamiento por selección** ("pase este ejercicio a Pascal para probar su funcionamiento con el archivo `ordenarVector.pas`" — archivo que no existe en este repositorio), y varios programas de arreglos paralelos/registros con vectores (estudiantes, viajes de transporte de caudales, empleados administrativos).

## Practica 6 (2025) — Estructura de Datos Listas

- **Fuente:** [`Practica 6 - Algoritmos y Programación I 2025.pdf`](<../../fuentes/algoritmos-y-programacion-1/practicas-2025/Practica 6 - Algoritmos y Programación I 2025.pdf>) (3 páginas, 6 ejercicios)
- Introduce **listas enlazadas** mediante una unidad `GenericLinkedList` propia de la cátedra (no es una unidad estándar de Free Pascal), con una tabla de referencia de sintaxis (`Lista = specialize LinkedList <TIPO>`, `L.create()`, `L.reset()`, `L.eol()`, `L.current()`, `L.next()`, `L.add()`, `L.addFirst()`, `L.insertCurrent()`, `L.removeCurrent()`). Los ejercicios piden cargar listas, recorrerlas una sola vez para calcular promedio/porcentajes/máximo/mínimo, e imprimir múltiplos de un valor dado.

## Practica 7 (2025) — Estructura de Datos Listas II

- **Fuente:** [`Practica 7 - Algoritmos y Programación I 2025.pdf`](<../../fuentes/algoritmos-y-programacion-1/practicas-2025/Practica 7 - Algoritmos y Programación I 2025.pdf>) (2 páginas, 8 ejercicios)
- Profundiza en listas enlazadas: insertar al principio o en orden, calcular longitud, contar/eliminar ocurrencias, generar sublistas nuevas a partir de una condición, separar una lista en 10 listas según un criterio (último dígito del documento), y dos problemas más elaborados de agregación por clave (ventas de pasajes aéreos agrupadas por código de vuelo).
