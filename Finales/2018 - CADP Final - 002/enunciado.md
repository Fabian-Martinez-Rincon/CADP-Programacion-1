---
id: "CADP-FINAL-2018-002"
titulo: "Final CADP 2018 (002) - lista de nombres, revisión de código INSERTAR y teoría"
slug: "final-cadp-2018-002"
tipo: "final"
tema: "eficiencia-y-estructuras-de-datos"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "2018 - CADP Final - 002.pdf"
    paginas: "1"
---

# Final CADP 2018 (002) — Examen Final CADP, 08/05/2018

## Enunciado

1. **Práctica**: Implementar un programa que:
   a. Genere una lista de nombres de personas. Los nombres se leen de teclado hasta que se ingresa el nombre "ZZZ".
   b. Lea un nombre de teclado y elimine eficientemente todas las ocurrencias de ese nombre que aparecen en la lista generada en a).

2. Señale y justifique los errores del procedimiento INSERTAR cuyo objetivo es insertar un elemento, en una posición determinada, en un vector.

   ```pascal
   PROCEDURE INSERTAR (VAR V:vector; dimL:integer; dato:integer; pos:integer);
   BEGIN
       IF ((dimL + 1) <= dimF) THEN BEGIN
         FOR i := dimL TO pos DO V[i]:= V[i+1];
         V[i]:= dato;
         dimL := dimL + 1;
       END;
   END;
   ```

3. Explique brevemente cuál es la importancia de que el lenguaje permita tipos de datos definidos por el usuario.
4. ¿Qué diferencia existe entre un lenguaje "fuertemente" tipado con uno "dinámicamente" tipado?
5. Explique brevemente el riesgo de utilizar variables globales para la comunicación entre módulos.
6. Dado dos variables A y B de tipo registro. Indique si las operaciones A:=B, A=B, READ(A), WRITE(B) son correctas. Justifique.
7. Indique las características de una estructura arreglo y la diferencia entre dimensión física y lógica.
8. ¿Cuál es el objetivo de aplicar la algorítmica de corte de control sobre una estructura de datos?
9. ¿Toda solución correcta es eficiente? Justifique.
10. Realice un cálculo del tiempo de ejecución de la solución planteada en el punto 1.b)

## Solución

No hay carpeta `Programa/` ni archivo `.pas` para este enunciado en el repositorio. Estado: sin solución disponible.
