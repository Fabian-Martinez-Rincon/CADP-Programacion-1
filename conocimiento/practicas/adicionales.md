---
id: "CADP-PRACTICAS-ADICIONALES"
titulo: "Programas adicionales sueltos (Practicas)"
slug: "practicas-adicionales"
tipo: "ejemplo"
tema: "adicionales"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
relacionados:
  - "./practica-04-arreglos/ejercicios.md"
  - "./practica-07-repaso/ejercicios.md"
codigo_relacionado:
  - "../../codigo/soluciones/practicas/adicionales/carolina-program.pas"
  - "../../codigo/soluciones/practicas/practica-07-repaso/adicionales/pepito-el-feito.pas"
---

# Programas adicionales sueltos (Practicas)

Dos programas `.pas` que viven en carpetas `adicionales/` del track legado de Practicas, sueltos de la secuencia numerada de ejercicios. Son contribuciones individuales con nombre propio, sin un enunciado de cátedra que las respalde en las fuentes disponibles — se catalogan acá en vez de forzarlas dentro de `ejercicios.md` de una práctica puntual.

## Carolina (`carolina-program.pas`)

- **Código**: [`codigo/soluciones/practicas/adicionales/carolina-program.pas`](../../codigo/soluciones/practicas/adicionales/carolina-program.pas)
- **Estado**: `resuelto` (compila sin errores con Free Pascal 3.2.2, `fpc -Se1`; no se ejecutó)
- **Tema**: vectores (afín a la Práctica 4).
- **Enunciado**: no hay ningún documento fuente que lo acompañe; se describe únicamente por lo que hace el código.
- **Qué hace**: carga un vector de 10 enteros (`cargarVector`) y elimina **todas** las ocurrencias de un valor dado (`elemento:=3`, fijo en el código, no leído por teclado) con `eliminarOcurrencias`, que llama repetidamente a un `BorrarPos` clásico (desplazar los elementos posteriores una posición hacia atrás y reducir la dimensión lógica) mientras el valor en la posición actual siga coincidiendo. Es una variante de la operación "Borrar_Elementos" de [`practica-04-arreglos/teoria.md`](./practica-04-arreglos/teoria.md), generalizada para borrar todas las repeticiones de un valor en vez de una sola.

## Pepito El Feito (`pepito-el-feito.pas`)

- **Código**: [`codigo/soluciones/practicas/practica-07-repaso/adicionales/pepito-el-feito.pas`](../../codigo/soluciones/practicas/practica-07-repaso/adicionales/pepito-el-feito.pas)
- **Estado**: `parcial` (compila sin errores con Free Pascal 3.2.2, `fpc -Se1`; no se ejecutó; el propio autor deja dos incisos marcados como no logrados, ver abajo)
- **Tema**: combina vectores y listas enlazadas (afín a las Prácticas 4 y 6).
- **Enunciado**: tampoco tiene documento fuente asociado; el nombre de archivo ("Pepito El Feito") es el que eligió quien lo escribió, se conserva tal cual como contexto sin más comentario.
- **Qué hace**: modela un sistema de pedidos de postres. Un vector `Vpostre` (de tamaño fijo `dimFPostre=3`) donde cada postre tiene un nombre y una **lista enlazada** de ingredientes (`listaPostre`, cada nodo con nombre y cantidad, cargada hasta un centinela `cantidad=-1`); y un vector `Vpedidos` (`dimFPedidos=2`) con los pedidos de clientes, cada uno referenciando un postre por código. `ImprimirMenu` muestra cada pedido con sus ingredientes; `Maximo`/`MasUsadoPorPostre` recorren la lista de ingredientes de cada postre pedido para informar cuál es el que más cantidad usa (mismo patrón de "máximo en una pasada" que en `practica-06-listas/teoria.md`). El propio código deja constancia de que dos partes no salieron como se buscaba: `OrdenarPedidos` (comentario *"Trate de hacerlo en un programa separado pero no me funciono"*) y `ImprimirOrden` (*"No pude hacer que se imprimar ordenado"*).
