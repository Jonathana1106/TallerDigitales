# TallerDigitales 閭

En este git se almacenarán los Laboratorios, las Tareas y el Proyecto correspondientes al curso de Taller de Diseño de Sistemas Digitales.

## Laboratorio #1 
Este laboratorio introduce al estudiante al uso de chips de compuertas lógicas, así como de herramientas y dispositivos relacionados con uso. Se dará especial énfasis al comportamiento y a las características eléctricas de algunas familias de compuertas lógicas. En este laboratorio será necesario un software que permita la simulación de componentes digitales y analógicos discretos (LTSpice, NI MultiSim, Proteus, etc).

### Experimento #1: 
Realizar mediciones con circuitos TTL y CMOS.

TTL                             | CMOS
:-------------------------:     |:-------------------------:|
![](Lab1/Informe/img/TTLC1.png) |![](Lab1/Informe/img/CMOSC1.png)

### Experimento #2:
Proponer un circuito que modele la función F = ((A ~& B) & C) + (A ^ C).
Para esto de debe desarrollar una interfaz entre las tecnologías TTL y CMOS, pero dato que los dispositivos utilizados no necesitanq ue se desarrolle una interfaz entre los mismos se tiene.

Interfaz TTL - CMOS                         |
:-------------------------:                 |
![](Lab1/Informe/img/FuncionIterfaz.png)    |
### Experimento #3:
A partir de compuertas lógicas y partiendo de un sumador completo de 1 bit, desarrollar un sumador completo de 2 bits.

Sumador 1 bit                               | Sumador 2 bits
:-------------------------:                 |:-------------------------:|
![](Lab1/Informe/img/SC1B.png)              |![](Lab1/Informe/img/SC2B.png)

Desarrollados en MultiSim se tiene lo siguiente.

Sumador 1 bit                               | Sumador 2 bits
:-------------------------:                 |:-------------------------:|
![](Lab1/Informe/img/Sumador1BInside.png)   |![](Lab1/Informe/img/Sumador2B.png)
## Laboratorio #2 
Este laboratorio introduce al estudiante al dise˜no de circuitos digitales por medio de lenguajes de descripción de hardware (HDL). Un HDL es una forma de describir la especificación, comportamiento o estructura de un módulo de hardware, por medio de una estructura pro-gramática. Pese a su similitud con un lenguaje de programación (tipos de datos, estructuras básicas, sintaxis, etc) los HDL deben describir hardware, por lo que para todo dise˜no, se debe tener conocimiento completo de qué componente se están dise˜nando. Esto implica la realización previa de tablas de verdad, diagramas de estados, diagramas de bloques, etc.

### Experimento #1:
Este experimento consiste en dise˜nar un decodificador para display 7 segmentos con un modelo de comportamiento en SystemVerilog, para el código ASCII (0-9, A-Z), en caso de que la letra no se pueda representar, deberá representar con la letra E.

Decodificador ASCCI 7 Segmentos             |
:-------------------------:                 |
![]()      |
### Experimento #2: 
Este experimento consiste en dise˜nar un sumador completo de 6 bits con modelo de estructura en VHDL, partiendo del dise˜no un sumador completo de 1 bit.

Sumador Completo de 6 bits                  |
:-------------------------:                 |
![]()      |
### Experimento #3: 
Este experimento consiste en dise˜nar contador parametrizable de N bits con reset asincrónico en el lenguaje de descripción de su preferencia, se utilizó System Verilog.
El modelo de bloques queda definido de la siguiente manera.

Contador Parametrizable de N bits           |
:-------------------------:                 |
![](Lab2/Informe/img/p3/counter8b.png)      |
## Laboraotorio #3 
Un circuito combinacional es aquel en que las salidas solamente dependen combinaciones de la entradas y no del tiempo. Esta característica hace que los sistemas combinacionales sean en general rápidos, ya que no requieren ningún tipo de sincronización con se˜nales de reloj. En sistemas digitales complejos, como los microprocesadores, los circuitos de lógica combinacional juegan un papel fundamental. Es por esto que en este laboratorio se realizará el dise˜no de una Unidad Lógico-Aritmética (ALU), componente esencial en la etapas de ejecución de cualquier microprocesador moderno. La ALU es la unidad encargada de la ejecución de las instrucciones aritméticas y lógicas en un procesador. Dichas instrucciones requieren tiempos de ejecución cortos, para tener máximo desempe˜no en el procesador y es por esta razón por la que en general se requiere de una lógica combinacional en su implementación. En este laboratorio el estudiante aplicará los conceptos de lógica combinacional en el dise˜no de circuitos digitales lógicos y aritméticos con un lenguaje de descripción de hardware. Además, se abordarán asuntos de tiempo relacionados con lógica combinacional, como lo son los tiempos de propagación y contaminación así como la ruta crítica.

### Experimento #1: 
Se debe realizar una calculadora parametrizable, con el fin de que pueda ejecutar las operaciones de suma, resta, multiplicación, división, módulo, and, or, xor, shiftL, shifR. Se debe de implementar las banderas de estados de la ALU: Negativo (N), Cero (Z), Acarreo (C) y Desbordamiento (V).

ALU (Interior)                              | ALU (conectada)
:-------------------------:                 |:-------------------------:|
![](Lab3/Informe/img/nivel31.png)           |![](Lab3/Informe/img/nivel32.png)

### Experimento #2: 
## Laboratorio #4 

## Proyecto 
