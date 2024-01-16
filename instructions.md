![BrightCoders Logo](img/logo.png)

# 🥷 Reto de Programación

- **Organización.** [Equipo (3-4 integrantes)](https://github.com/BrightCoders-Institute/handbook/wiki/Actividades#actividades-en-equipo-sincr%C3%B3nicas)
- **Modo.** [Síncrono](https://github.com/BrightCoders-Institute/handbook/wiki/Actividades#actividades-en-equipo-sincr%C3%B3nicas)
- **Estrategia.** [Mob programming](https://github.com/BrightCoders-Institute/handbook/wiki/Mob-Programming)
- **Duración.** 3 días
- **Dedicación.** 2.5 horas diarias (7.5 horas total)

# Implementación de Sudoku Valiudator

- [🎯 Objetivo](#-objetivo)
- [📋 Instrucciones](#-instrucciones)
- [📥 Entregables](#-entregables)
- [🛠 Tecnologías](#-tecnologías)
- [👨‍💻 Requerimientos funcionales](#-requerimientos-funcionales)
  - [Ejemplos de valores de entrada](#ejemplos-de-valores-de-entrada)
  - [Sudoku Solver](#sudoku-solver)
    - [Ejemplo de valores de entrada](#ejemplo-de-valores-de-entrada)
- [🚨 Requerimientos no funcionales](#-requerimientos-no-funcionales)
- [✅ Indicadores de cumplimiento](#-indicadores-de-cumplimiento)
- [📚 Recursos](#-recursos)

# 🎯 Objetivo

Esta actividad tiene como objetivos:

- **Practicar la semántica y sintaxis de Ruby:** Desarrollar habilidades sólidas en el uso correcto de la sintaxis y las convenciones de nomenclatura de Ruby, así como comprender y aplicar adecuadamente los conceptos semánticos del lenguaje.
- **Utilizar RuboCop para mejorar la calidad del código Ruby:** Familiarizarse con la herramienta RuboCop y utilizarla como guía para garantizar la consistencia y legibilidad del código, siguiendo las mejores prácticas y convenciones de estilo de Ruby.
- **Aplicar principios de programación orientada a objetos en Ruby:** Comprender y aplicar los conceptos fundamentales de la programación orientada a objetos (POO) en Ruby, como encapsulación, herencia, polimorfismo y abstracción, para crear código modular, reutilizable y fácil de mantener.
- **Practicar el desarrollo basado en pruebas con Ruby, RSpec y/o MiniTest:** Adquirir experiencia en el desarrollo de pruebas unitarias y funcionales utilizando frameworks populares como RSpec y/o MiniTest, para garantizar la calidad y robustez del código, así como facilitar la detección temprana de errores y el mantenimiento a largo plazo.
- **Introducir los principios SOLID:** Familiarizarse con los principios SOLID (Single Responsibility, Open-Closed, Liskov Substitution, Interface Segregation, Dependency Inversion) y aplicarlos en el diseño y desarrollo de software, buscando lograr un código más modular, flexible y fácil de mantener.
- **Introducir buenas prácticas de desarrollo de software.** Fomentar la adherencia a los principios como SOLID, DRY, KISS, YAGNI en el diseño y la implementación del código fuente, promoviendo la estructuración del código orientado a objetos y la creación de métodos pequeños y cohesivos.
- **Fomentar la práctica de commits significativos.** Fomentar la práctica de commits significativos, que permitan contar una historia a través del historial de cambios del código fuente, facilitando la comprensión del mismo y la colaboración entre los miembros del equipo.

# 📋 Instrucciones

- Los equipos trabajarán de manera colaborativa aplicando la dinámica de mob programming para desarrollar el algoritmo de acuerdo con los requerimientos indicados en las siguientes secciones.
- Utilizando Ruby, se desarrollará una solución completa.
- Se utilizará RuboCop para garantizar la consistencia y legibilidad del código, siguiendo las mejores prácticas y convenciones de estilo de Ruby.
- Se utilizarán **RubyCritic y Reek** para analizar el código y utilizar los resultados para hacer mejoras.
- La solución deberá seguir el enfoque orientado a objetos.
- Se fomentará la rotación de los participantes en los commits, promoviendo una participación equitativa y una responsabilidad compartida.
- En cada commit realizado, se registrarán todos los participantes activos a través de co-author commits.
- Se pondrá en práctica el concepto de desarrollo basado en pruebas utilizando RSpec o MiniTest.
- Se aplicará el concepto de commits significativos.
- Se aplicarán principios de buena calidad de código como SOLID, DRY, KISS, YAGNI, etc.

# 📥 Entregables

- Código Ruby funcional y completo en la rama principal de este repositorio.
- Puntuación en RubyCritic por lo menos 90 en la carpeta de la App y por lo menos 65 en las pruebas
- Implementación orientada a objetos que refleje los principios de la programación orientada a objetos en Ruby.
- Archivo de configuración de RuboCop aplicado al proyecto para garantizar la calidad del código.
- Conjunto completo de pruebas unitarias y funcionales desarrolladas con RSpec y/o MiniTest para verificar el correcto funcionamiento del código.
- Archivo README.md actualizado con las instrucciones de ejecución y cualquier otra información relevante.

# 🛠 Tecnologías

- Ruby
- [Rubocop](https://github.com/rubocop/rubocop)
- [RubyCritic](https://github.com/whitesmith/rubycritic)
- [Reek](https://github.com/troessner/reek)
- [RSpec](https://rspec.info/)
- [Minitest](https://github.com/minitest/minitest)

# 👨‍💻 Requerimientos funcionales

El reto del Sudoku Validator consiste en desarrollar un programa que verifique si un tablero de Sudoku dado es válido o no. El objetivo es comprobar si el tablero cumple con las reglas del Sudoku y si representa una solución válida.

- Validación del tablero:
  - El programa debe aceptar un parámetro de entrada que represente el tablero de Sudoku a validar.
  - El tablero debe ser una matriz bidimensional de tamaño 9x9, donde cada elemento puede contener un número entero del 1 al 9 o estar vacío.
  - El programa debe verificar que el tablero cumpla con las siguientes condiciones:
     - Cada fila debe contener todos los números del 1 al 9 sin repetirse.
     - Cada columna debe contener todos los números del 1 al 9 sin repetirse.
     - Cada región debe contener todos los números del 1 al 9 sin repetirse.
  - El programa debe devolver un valor booleano que indique si el tablero es válido o no.
- Requerimientos adicionales:
  - Manejo de errores:
    -  El programa debe manejar adecuadamente los errores o casos inesperados, como un tablero con un tamaño incorrecto o elementos inválidos.
   - Pruebas unitarias:
     - Se deben realizar pruebas unitarias exhaustivas para verificar el correcto funcionamiento del programa en diferentes escenarios, incluyendo casos válidos e inválidos.

## Ejemplos de valores de entrada

```
tablero = [
  [5, 3, 0, 0, 7, 0, 0, 0, 0],
  [6, 0, 0, 1, 9, 5, 0, 0, 0],
  [0, 9, 8, 0, 0, 0, 0, 6, 0],
  [8, 0, 0, 0, 6, 0, 0, 0, 3],
  [4, 0, 0, 8, 0, 3, 0, 0, 1],
  [7, 0, 0, 0, 2, 0, 0, 0, 6],
  [0, 6, 0, 0, 0, 0, 2, 8, 0],
  [0, 0, 0, 4, 1, 9, 0, 0, 5],
  [0, 0, 0, 0, 8, 0, 0, 7, 9]
]

resultado = sudoku_validator(tablero)
puts resultado # Debería imprimir: true
```
```
tablero = [
  [5, 3, 0, 0, 7, 0, 0, 0, 0],
  [6, 0, 0, 1, 9, 5, 0, 0, 0],
  [0, 9, 8, 0, 0, 0, 0, 6, 0],
  [8, 0, 0, 0, 6, 0, 0, 0, 3],
  [4, 0, 0, 8, 0, 3, 0, 0, 1],
  [7, 0, 0, 0, 2, 0, 0, 0, 6],
  [0, 6, 0, 0, 0, 0, 2, 8, 0],
  [0, 0, 0, 4, 1, 9, 0, 0, 5],
  [0, 0, 0, 0, 8, 0, 9, 7, 9] # El último 9 es inválido (repetido)
]

resultado = sudoku_validator(tablero)
puts resultado # Debería imprimir: false

````

## Sudoku Solver

**Si el tiempo lo permite codificar también un Sudoku Solver.** 

El reto del Sudoku Solver consiste en desarrollar un programa que sea capaz de resolver automáticamente un Sudoku dado. El objetivo es que el programa sea capaz de completar las casillas vacías del tablero de Sudoku de acuerdo con las reglas del juego, de manera que se llegue a una solución válida.

El Sudoku Solver debe ser capaz de tomar como entrada un tablero de Sudoku incompleto, donde algunas casillas ya tienen números y otras están vacías, y a partir de esa información, determinar los números que faltan y completar el tablero de manera única.

- Resolución del Sudoku:
  - El programa debe aceptar como parámetro de entrada un tablero de Sudoku incompleto.
  - El tablero debe ser una matriz bidimensional de tamaño 9x9, donde cada elemento puede contener un número entero del 1 al 9 o estar vacío.
  - El programa debe encontrar una solución válida para el Sudoku, completando las casillas vacías del tablero.
  - La solución encontrada debe cumplir con las reglas del Sudoku:
    - Cada fila debe contener todos los números del 1 al 9 sin repetirse.
    - Cada columna debe contener todos los números del 1 al 9 sin repetirse.
    - Cada región debe contener todos los números del 1 al 9 sin repetirse.
  - El programa debe devolver el tablero completo con la solución encontrada.
- Requerimientos adicionales:
  - Manejo de casos sin solución:
    - Si el tablero de entrada no tiene una solución válida, el programa debe indicarlo de alguna manera, como devolviendo un valor especial o lanzando una excepción.
    - Se debe proporcionar un mecanismo para identificar si el Sudoku es irresoluble o si el tablero de entrada es incorrecto.
   - Pruebas unitarias:
     - Se deben realizar pruebas unitarias exhaustivas para verificar el correcto funcionamiento del programa en diferentes escenarios, incluyendo casos válidos e inválidos.

### Ejemplo de valores de entrada

````
tablero = [
  [5, 3, 0, 0, 7, 0, 0, 0, 0],
  [6, 0, 0, 1, 9, 5, 0, 0, 0],
  [0, 9, 8, 0, 0, 0, 0, 6, 0],
  [8, 0, 0, 0, 6, 0, 0, 0, 3],
  [4, 0, 0, 8, 0, 3, 0, 0, 1],
  [7, 0, 0, 0, 2, 0, 0, 0, 6],
  [0, 6, 0, 0, 0, 0, 2, 8, 0],
  [0, 0, 0, 4, 1, 9, 0, 0, 5],
  [0, 0, 0, 0, 8, 0, 0, 7, 9]
]

solucion = sudoku_solver(tablero)
imprimir_tablero(solucion) # Imprime la solución encontrada
````

# 🚨 Requerimientos no funcionales

- Calidad:
  - Aplicar el estilo de código definido por la comunidad, utilizando RuboCop como herramienta de apoyo.
  - Puntuación en RubyCritic por lo menos 90 en la carpeta de la App y por lo menos 65 en las pruebas.
  - Utilizar Reek para analizar el código y eliminar código duplicado, complejidad excesiva y malas prácticas de programación en un proyecto Ruby.
  - Incluir pruebas unitarias para garantizar la calidad del código.

- Desempeño y escalabilidad:
  - Permitir la ejecución desde la línea de comandos y mostrar la salida en la consola de manera eficiente y rápida.

- Código fuente:
  - Desarrollar una solución orientada a objetos, siguiendo los principios de la programación orientada a objetos (POO).
  - Escribir métodos pequeños y con un solo propósito para mejorar la legibilidad y el mantenimiento del código.
  - Aplicar principios de diseño de código como SOLID, DRY, KISS, YAGNI, etc.

# ✅ Indicadores de cumplimiento

1. Sintaxis y semántica de Ruby:
   - El código debe estar escrito utilizando la sintaxis correcta de Ruby.
   - Se deben utilizar las convenciones de nomenclatura adecuadas de Ruby.

2. Uso de RuboCop:
   - Se debe utilizar RuboCop como herramienta de análisis estático para mejorar la calidad del código Ruby.

3. Uso de RubyCritic:
   - Se debe utilizar RubyCritic como herramienta de análisis estático para evaluar la calidad y complejidad del código Ruby.
   - Se deben realizar revisiones periódicas utilizando RubyCritic para identificar y abordar los problemas de calidad del código.

4. Uso de Reek:
   - Se debe utilizar Reek como herramienta de análisis estático para identificar olores de código y mejorar la calidad del código Ruby.
   - Se deben realizar análisis regulares con Reek para identificar y abordar los problemas de diseño, complejidad y malas prácticas.

5. Corrección de problemas detectados:
   - Los problemas de cumplimiento identificados por RuboCop, RubyCritic y Reek deben ser abordados y corregidos de manera oportuna.
   - Se deben realizar las correcciones necesarias para eliminar los olores de código, mejorar la calidad y mantener un código limpio y legible.

6. Programación orientada a objetos:
   - Deben aplicarse los conceptos fundamentales de la programación orientada a objetos, como encapsulación, herencia, polimorfismo y abstracción.
   - El código debe ser modular, reutilizable y fácil de mantener.

7. Uso de polimorfismo en lugar de banderas booleanas:
   - Deben identificarse situaciones en las que se utilizan banderas booleanas y reemplazarlas por polimorfismo.

8. Desarrollo basado en pruebas:
   - Se deben desarrollar pruebas unitarias y funcionales utilizando RSpec y/o MiniTest.
   - Las pruebas deben garantizar la calidad y robustez del código.

9. Aplicación de buenas prácticas de desarrollo de software:
   - El código fuente cumple con los estándares de calidad y está organizado de manera estructurada y legible
   - Se han seguido principios como SOLID, DRY, KISS, YAGNI, etc. en el diseño y la implementación del código fuente

10. Utilización del canal de #support en Slack:
   - He utilizado el canal de #support en Slack para plantear dudas o solicitar ayuda

11. Compartir recursos, materiales y tips de estudio/aprendizaje con mis compañeros:
    - He participado activamente en la comunidad de brightcoders (slack, gather, etc.) compartiendo recursos, materiales y consejos?

# 📚 Recursos

- [Desarrollo Basado en Pruebas](https://brightcoders-2.gitbook.io/brightcoders-handbook/recursos/ruby-on-rails/desarrollo-basado-en-pruebas)
- [RuboCop](https://brightcoders-2.gitbook.io/brightcoders-handbook/recursos/ruby-on-rails/rubocop)
- [Principios SOLID y Polimorfismo](https://brightcoders-2.gitbook.io/brightcoders-handbook/recursos/ruby-on-rails/solid-and-polimorfismo)
- [Git & Github](https://brightcoders-2.gitbook.io/brightcoders-handbook/recursos/git-and-github/git-and-github)
- [Principios SOLID, DRY, KISS & YAGNI](https://brightcoders-2.gitbook.io/brightcoders-handbook/codigo-limpio/principios)
