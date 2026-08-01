---
id: "CADP-PARCIAL-YOUTUBE"
titulo: "Parcial CADP - YouTube: canal Paulina Cocina"
slug: "parcial-cadp-youtube"
tipo: "parcial"
tema: "listas-enlazadas-y-registros"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "mixto"
fuentes:
  - archivo: "YouTube.pdf"
    paginas: "1"
codigo_relacionado:
  - "Programa/Youtube.pas"
relacionados:
  - "../README.md"
---

# Parcial CADP - YouTube

## Enunciado

La plataforma YouTube está analizando algunos de sus principales canales de video. Para ello, YouTube cuenta con una tabla con el nombre de las 60 categorías que utilizan para clasificar los videos (Música, Educación y Ciencia, Hogar, Deportes, etc.).

De cada video se conoce su título, nombre del canal donde fue publicado, duración en segundos, año de publicación, cantidad de visualizaciones y código de categoría a la que pertenece el video (1..60).

Realizar un programa que:

A. Invoque a un módulo que lea la información de los videos hasta ingresar un video de duración -1 (que no debe procesarse) y devuelva en una estructura de datos adecuada, para el canal "Paulina Cocina", la siguiente información:
- Nombre del canal
- Año de publicación del video más reciente
- Cantidad de videos publicados
- Cantidad total de visualizaciones entre todos los videos.
- Detalle con Título, nombre de la categoría y duración de todos los videos con más de 1.000 visualizaciones

B. Invoque a un módulo que reciba la estructura generada en A) e imprima Nombre del canal y el título de cada video con más de 1000 visualizaciones.

(El PDF fuente incluye a continuación las instrucciones administrativas de entrega por correo electrónico propias del examen remoto de 2020; no se transcriben.)

El código en [`../Parciales 1ra Fecha/PaulaCocina/programa/PaulaBien.pas`](../Parciales%201ra%20Fecha/PaulaCocina/programa/PaulaBien.pas) resuelve este mismo problema (mismo canal "Paulina Cocina", mismos campos); esa carpeta no conserva una foto del enunciado, así que éste es el enunciado de referencia para ambas soluciones (ver fila "Parciales 1ra Fecha / PaulaCocina" en [`../README.md`](../README.md)).

## Solución

[`Programa/Youtube.pas`](Programa/Youtube.pas) (`program YouTube`) implementa el módulo A (`procesarInfo`/`LeerPaula`, filtrando por `V.nombre = 'Paulina Cocina'` y acumulando cantidad de videos, visualizaciones totales y año más reciente) y el módulo B (`ImprimirPaula`, que imprime nombre del canal y título de cada video agregado al detalle). Tiene dos problemas conocidos:

> [!WARNING]
> El filtro para agregar un video al detalle usa `V.duracion > 1000` en vez de `V.cantViews > 1000` (confunde duración con visualizaciones, que es el campo que pide el enunciado). Además, el vector de nombres de categorías `VC` se usa dentro de `LeerPaula` sin haber sido cargado nunca con datos (se declara localmente y no se inicializa), por lo que `VC[V.codCat]` no contiene un nombre de categoría válido.

Estado: implementa la estructura general de A) y B) pero con los dos errores de lógica señalados, sin verificar.
