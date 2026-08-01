[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/FabianMartinez1234567/CADP)
[![GitHub stars](https://img.shields.io/github/stars/FabianMartinez1234567/CADP)](https://github.com/FabianMartinez1234567/CADP/stargazers/)
[![GitHub repo size in bytes](https://img.shields.io/github/repo-size/FabianMartinez1234567/CADP)](https://github.com/FabianMartinez1234567/CADP)

![template](https://github.com/user-attachments/assets/5bf07837-5bba-4bcf-b95f-6d29e5c10ad7)

# CADP — Conceptos de Algoritmos, Datos y Programas

> [!IMPORTANT]
> Si encuentran algún link roto o tienen alguna duda, no duden en decirme por mail fabianmartinezrincon.123@gmail.com

Repositorio de la cátedra **CADP / Algoritmos y Programación 1**: teoría, ejercicios resueltos, parciales y finales de años anteriores, en **Pascal**. Sirve tanto para estudiar la materia como para dar clases particulares (contenido de FaboSistemas).

## Público

- Estudiantes de la materia (cursada actual o "Algoritmos y Programación 1" del plan nuevo) que buscan práctica resuelta y explicada.
- Estudiantes que están preparando un parcial o un final y quieren ver exámenes anteriores.
- Cualquiera que use este repositorio como contexto para una IA (asistente de estudio, generador de guías, etc.) — ver [`conocimiento/README.md`](conocimiento/README.md) para cómo está pensado ese uso.

## Estructura

```text
/
├── conocimiento/     Contenido educativo en Markdown (teoría, ejercicios, resúmenes)
├── fuentes/           PDF, PPT y DOCX originales (guías, diapositivas de clase)
├── codigo/            Código Pascal: ejemplos, soluciones y auxiliares
├── recursos/          Imágenes y capturas (apuntes, autoevaluaciones, diagramas)
├── Parciales/         Archivo de parciales de años anteriores (enunciado + solución)
├── Finales/            Archivo de finales de años anteriores (enunciado + solución)
├── Estudiantes/        Entregas de estudiantes (una carpeta por alumno/a)
└── docs/               (en el workspace que contiene este repo) instrucciones de organización
```

Ver el detalle de qué va en cada carpeta en [`conocimiento/README.md`](conocimiento/README.md).

## Navegación

- **[`conocimiento/INDICE_GENERAL.md`](conocimiento/INDICE_GENERAL.md)** — índice completo por unidad, tema y tipo de contenido.
- **[Algoritmos y Programación 1](conocimiento/algoritmos-y-programacion-1/README.md)** — cursada actual (2025/2026), práctica 1 a 7.
- **[Practicas (archivo histórico)](conocimiento/practicas/README.md)** — cursada más extensa de años anteriores, práctica 0 a 7 + repaso.
- **[Sábados](conocimiento/sabados/README.md)** — clases de repaso adicionales.
- **[Autoevaluaciones](conocimiento/autoevaluaciones/README.md)** — cuestionarios de autoevaluación por tema.
- **[Parciales](Parciales/README.md)** y **[Finales](Finales/README.md)** — archivo de exámenes anteriores.

### Accesos directos (resúmenes más consultados)

- [Resumen Final](conocimiento/resumenes/resumen-final.md)
- [Preguntas de verdadero o falso](conocimiento/resumenes/preguntas-verdadero-o-falso.md)
- [Preguntas teóricas](conocimiento/practicas/preguntas-teoricas.md)
- [Ejemplos de memoria y tiempo de ejecución](conocimiento/resumenes/ejemplos-memoria-y-tiempo.md)
- [Memoria estática/dinámica y tiempo de ejecución — dos ejercicios resueltos](conocimiento/resumenes/memoria-estatica-dinamica-tiempo-ejecucion.md)
- [Vectores](conocimiento/practicas/practica-04-arreglos/teoria.md)
- [Listas](conocimiento/practicas/practica-06-listas/teoria.md)
- [Vectores vs. Listas](conocimiento/practicas/practica-06-listas/vectores-vs-listas.md)
- [Parcial resuelto (Sergio) — eliminar ocurrencias en vector ordenado](Parciales/Sergio/Parcial_Sergio.md)

## Tecnologías

Todo el código está escrito en **Pascal** (Free Pascal / Turbo Pascal). Para compilar y ejecutar un `.pas`:

```sh
fpc archivo.pas   # genera el ejecutable
./archivo         # o archivo.exe en Windows
```

Los binarios compilados (`*.o`, `*.exe`, `*.ppu`, `*.out`, `*.bin`) no se versionan (ver `.gitignore`).

## Estado de esta reorganización

Este repositorio fue reorganizado en una base de conocimiento trazable siguiendo el proceso descripto en `docs/` (a nivel del workspace que contiene este repo). Los archivos originales se conservaron; el código y los PDF/PPT/DOCX fuente se movieron a `codigo/`, `fuentes/` y `recursos/` sin modificarse, y el contenido en `conocimiento/` referencia su procedencia mediante metadatos y enlaces relativos.
