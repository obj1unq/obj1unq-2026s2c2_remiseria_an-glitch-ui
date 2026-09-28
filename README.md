# Remisería ChasquiCoop

La cooperativa ChasquiCoop es una empresa de transporte de personas que cuenta con varias sucursales y una flota de vehículos que pueden dar servicio a una o más sucursales. 
Para realizar los viajes se reciben reservas indicando una cantidad de personas, una distancia a recorrer y el tiempo máximo de viaje en horas. Además se consideran necesidades especiales que tienen que ver con la sensibilidad cromática, las neurodivergencias y las discapacidades motrices. Para algunas personas con TDAH (Trastorno por Déficit de Atención e Hiperactividad) los colores como el rojo o el verde flúor les ocasionan estrés.

## 1. Los vehículos

De cada vehículo se necesita saber:
- su capacidad (expresada en cantidad de personas que puede transportar al mismo tiempo), 
- su velocidad máxima
- su color 
- si su motor es ruidoso
- si puede transportar sillas de ruedas. 
- su autonomía (Es la distancia que puede recorrer sin cargar combustible)

Entre los vehículos de las sucursales hay varios **torinos**, varios **económicos** y una **combi adaptable** 

* **Torino**: son vehículos con una capacidad de 4 personas. No tiene capacidad de llevar sillas de ruedas y su motor es ruidoso. El color se determina para cada unidad. Como son vehículos viejos, tanto la velocidad máxima como la autonomía se indican para cada unidad.

* **Económicos**: son vehículos que funcionan a gas y pueden tener adaptaciones que influyen en su rendimiento. Las adaptaciones que puede tener un vehículo económico son:
- transportador para silla de ruedas
- caño de escape silencioso
- tanque extra de gas 

La capacidad base de estos vehículos es 5. Cantidad a la que hay que descontar los espacios que exigen sus adaptaciones. Tanto el transportador de
silla de rueda como el tanque extra de gas ocupan una plaza. El caño de escape silencioso no ocupa espacio extra. Por lo que un auto económico puede llevar a 5, 4 o 3 pasajeros, según sea su configuración.

La velocidad máxima del vehículo sin ninguna adaptación es de 120 km/h. 
Si tiene el caño de escape silencioso la velocidad máxima es de 115 km/h. 
Si tiene un tanque extra la velocidad máxima es de 80 km/h. 
Si lleva transportador de sillas de ruedas la velocidad máxima es de 90 km/h. 

Por lo tanto, la velocidad máxima de un vehículo económico es el número menor que exige alguna de sus adaptaciones: Un vehículo que posee las 3 adaptaciones irá a 80 km/h, uno que tiene solo el escape iría a 115 km/h. Mientra que si no tiene escape iría a 120 km/h   

Un vehículo base de estos no puede llevar una silla de ruedas. Solo puede llevarlo si contiene alguna adaptación que lo permita. La única es el *transportador de sillas de rueda*. Ni el tanque extra ni el caño de escape silencioso influye.

Con respecto al ruido del motor, es similar: Sin ninguna adpatación es ruidoso. Si posee alguna adaptación que permita reducir el ruido del motor, entonces será silencioso. Tanto el caño de escape silencoso como el tanque de gas extra funcionan como silenciadores del motor. El transportador de sillas de rueda no influye para disminuir el ruido.

El color del vehículo económico es siempre **beige**.

Un vehículo económico sin ninguna adapactión tiene 200 km de autonomía. El caño de espape silenciado le quita 10 km de autonomía. El tanque adicional de gas aporta 200 km de autonómía extra. El transportador de silla de rueda le quita 20 km de autonomía.

* **La combi adaptable**: un vehículo de color **celeste** reconfigurable, porque se le puede cambiar el interior y el motor. 

La capacidad de transporte depende del interior:
  - El interior _espacioso_ Permite llevar 7 personas. No tiene capacidad de llevar sillas de ruedas.
  - El interior _accessible_ Permite llevar 5 personas. Tiene capacidad de llevar sillas de ruedas.

La velocidad, autonomía y ruido dependen del motor:
  - el _deportivo_: Tiene una autonomía de 400 km, velocidad máxima de 230 km/h, y es ruidoso
  - el _urbano_: Tiene una autonomía de 1000km, velocidad máxima de 130 km/h, y no es ruidoso

La combi adaptable es un vehículo único para toda la empresa.

### Casos de prueba

Considerar los siguientes vehículos. Se utilizan nombres de fantasía porque de esta forma las sucursales pueden comunicarse mas eficientemente con ellos por radio.

* reyDeCopas: un torino de color rojo, de autonomia 300 km y velocidad máxima 120.
* academia: un torino de color celeste, con 250 km de autonomía y velocidad máxima de 110.
* cuervo: un económico con tanque extra y transportador de silla de rueda.
* xeneize: un económico con caño de escape silencioso.
* millonario: un económico sin ninguna adaptación.
* combi: en este momento está equipada con interior accesible y el motor urbano.

#### Torino: rey de copas
  Probar que para reyDecopas:
    - El color es rojo
    - la autonomía es 300
    - la velocidad máxima es 120
    - la capacidad es 4
    - No puede llevar sillas de ruedas
    - Es ruidoso

#### Torino: academia
  Probar que para academia:
    - El color es celeste
    - la autonomía es 250
    - la velocidad máxima es 110
    - la capacidad es 4
    - No puede llevar sillas de ruedas
    - Es ruidoso
#### Económico: cuervo
  Probar que para cuervo:
    - El color es beige
    - la autonomía es 380
    - la velocidad máxima es 80
    - la capacidad es 3
    - Puede llevar sillas de ruedas
    - No es ruidoso
#### Económico: xeneise
  Probar que para xeneise:
    - El color es beige
    - la autonomía es 190
    - la velocidad máxima es 115
    - la capacidad es 5
    - No puede llevar sillas de ruedas
    - No es ruidoso
#### Económico: millonario
  Probar que para millonario:
    - El color es beige
    - la autonomía es 200
    - la velocidad máxima es 120
    - la capacidad es 5
    - No puede llevar sillas de ruedas
    - Es ruidoso
  
#### combi: motor urbano e interior accesible
  Probar que para la combi con motor urbano e interior accesible:
    - El color es celeste
    - la autonomía es 1000
    - la velocidad máxima es 130
    - la capacidad es 5
    - Puede llevar sillas de ruedas
    - No es ruidoso

#### combi: motor deportivo e interior espacioso
  Probar que para la combi con motor urbano e interior accesible:
    - El color es celeste
    - la autonomía es 400
    - la velocidad máxima es 230
    - la capacidad es 7
    - No Puede llevar sillas de ruedas
    - Es ruidoso

## 2. Reservas

Una reserva es una solicitud de un viaje.
 Se realiza indicando la cantidad de personas a llevar, la distancia a recorrer, el tiempo máximo de viaje en horas. 
 Además dado que esta cooperativa considera la sensibilidad cromática y las neurodivergencias, en la solicitud se pueden indicar:
 - colores que estan contraindicados para alguna de las personas que viajan
 - la necesidad de un auto que no sea ruidoso
 - necesidad de transportar silla de ruedas.

### Requerimiento:
Saber si una reserva puede ser cumplida por un vehículo. Para lo cual tiene que cumplirse todas estas condiciones:
- El vehículo debe tener una capacidad igual o superior a la indicada en la reserva
- El vehículo debe tener una autonomía igual o superior a la indicada en la reserva
- La velocidad máxima del vehículo supere a la velocidad promedio que necesita el viaje (calculada como distancia a recorrer / tiempo máximo) en al menos 10 km/h. Por ejemplo, un viaje de 300 km en 3 hs tiene como velocidad promedio 100 km/h, sumados a los 10 km/h de margen de error, exige que el vehículo tenga como velocidad máxima 110 km/h o más.
- El vehiculo debe ser respetuoso para las necesidades de los pasajeros del viaje:
  - si se indicaron colores contraindicados, el vehículo no sea de ese color
  - si se necesita llevar sillas de ruedas, el vehículo tenga esa capacidad
  - si se necesita que no sea ruidoso, entonces el veículo no lo debe ser.

### Casos de prueba

Para estos casos de prueba se reutilizan los vehículos ya definidos en la sección anterior (reyDeCopas, academia, cuervo, xeneize, millonario y combi), sin agregar vehículos nuevos.

#### Reserva exigente cumplida sin inconvenientes
Dada una reserva de 5 personas, 480 km de distancia y 4 horas de viaje, que necesita un vehículo silencioso, que pueda transportar sillas de ruedas, y que no sea de color rojo ni verde flúor.

  Probar que esta reserva **puede** ser cumplida por la combi (configurada con interior accesible y motor urbano).

#### Reserva que falla por capacidad insuficiente
Una reserva de 5 personas, 200 km de distancia y 2 horas de viaje.

  Probar que esta reserva **no puede** ser cumplida por reyDeCopas (capacidad insuficiente).

#### Reserva que falla por autonomía insuficiente
Una reserva de 5 personas, 195 km de distancia y 2 horas de viaje.

  Probar que esta reserva **no puede** ser cumplida por xeneize (autonomía insuficiente).

#### Reserva que falla por velocidad insuficiente
Una reserva de 5 personas, 200 km de distancia y 1 hora de viaje.

  Probar que esta reserva **no puede** ser cumplida por millonario (la velocidad máxima del vehículo no alcanza para el margen exigido).

#### Reserva que falla por color contraindicado
Una reserva de 4 personas, 150 km de distancia, 1.5 horas de viaje, con el color rojo indicado como contraindicado.

  Probar que esta reserva **no puede** ser cumplida por reyDeCopas (el vehículo es de un color contraindicado).

#### Reserva que falla por necesitar transportar silla de ruedas
Una reserva de 5 personas, 150 km de distancia, 1.5 horas de viaje, que necesita transportar silla de ruedas.

  Probar que esta reserva **no puede** ser cumplida por millonario (el vehículo no puede llevar sillas de ruedas).

#### Reserva que falla por necesitar un vehículo silencioso
Una reserva de 5 personas, 150 km de distancia, 1.5 horas de viaje, que necesita un vehículo silencioso.

  Probar que esta reserva **no puede** ser cumplida por millonario (el vehículo es ruidoso).

## 3. Sucursales y viajes

Cada sucursal de ChasquiCoop tiene una flota de vehículos y un historial de viajes realizados.

El ciclo de uso habitual, desde la perspectiva de quien atiende una reserva en una sucursal, es el siguiente:

1. Un cliente hace una **reserva**, indicando cuántas personas viajan, la distancia, el tiempo máximo y sus necesidades especiales (ver sección 2).
2. Se le consulta a la sucursal qué vehículos de **su flota** son capaces de cumplir esa reserva.
3. Se elige uno de esos vehículos.
4. Se registra el **viaje**: el hecho de que ese vehículo fue efectivamente asignado a esa reserva.

Es importante notar la diferencia entre una reserva y un viaje: la reserva es un pedido, que puede o no llegar a concretarse, y que por sí sola no tiene ninguna relación con un vehículo en particular. El viaje, en cambio, es el registro de que una reserva fue efectivamente resuelta por un vehículo puntual de la flota. Una misma reserva podría, en principio, ser cumplida por varios vehículos distintos de la flota (por eso el paso 2 devuelve varios candidatos) — pero un viaje asocia esa reserva a **uno solo**, el que finalmente se usó.

### Responsabilidades de una sucursal

- Administrar su flota, agregando o quitando vehículos.
- Dada una reserva, saber qué vehículos de la flota son capaces de cumplirla.
- Registrar un viaje, dada una reserva y el vehículo elegido para resolverla. Al registrar el viaje se debe validar que:
  - el vehículo sea parte de la flota de la sucursal
  - el vehículo sea capaz de cumplir con la reserva indicada
- Dado un vehículo, saber todas las reservas que dicho vehículo resolvió (es decir, las reservas de todos los viajes en los que participó ese vehículo).
- Dado un vehículo, saber la distancia total recorrida por ese vehículo en los viajes de la sucursal.

### Casos de prueba

La sucursal villaElisa tiene como flota a combi, academia y reyDeCopas (xeneize queda fuera de la flota).

Se solicita una reserva para ir a la UNQ, de 4 personas, 30 km de distancia, en un máximo de 4 horas, excluyendo el color rojo.

- De los vehículos de la flota, solo combi y academia son capaces de cumplir esta reserva (reyDeCopas queda descartado por ser de color rojo).
- Registrar esta reserva con reyDeCopas debe fallar, porque el vehículo no respeta la reserva (su color está contraindicado).
- Registrar esta reserva con xeneize debe fallar, porque el vehículo no es parte de la flota de villaElisa.
- Se registra el viaje con combi.

Se solicita una segunda reserva para ir a la UTN, de 4 personas, 60 km de distancia, en un máximo de 4 horas, no debe ser ruidoso y tiene que poder llevar silla de ruedas. Se registra el viaje con combi.

Se solicita una tercera reserva para ir a Unsam, de 4 personas, 70 km de distancia, en un máximo de 4 horas, excluyendo el color rojo. Se registra el viaje con academia.

Luego de registrados estos tres viajes:

- combi debe tener registradas las reservas de ir a la UNQ y a la UTN, habiendo recorrido en total 90 km.
- academia debe tener registrada únicamente la reserva de ir a Unsam, habiendo recorrido 70 km.

### 4. Para reflexionar:

¿Da igual que las colecciones de flotas y viajes en la sucursal sean listas o conjuntos? Si piensas que no, cambia una implementación
por la otra y revisa el resultado.

¿Dónde se instancia un viaje, dentro o fuera de la clase Sucursal?. Pensar como sería la alternativa.

¿La combi es un objeto autodefinido o una instancia de clase? ¿Se puede usar la otra variante indistintamente?

Dibujar el diagrama dinámico que muestra el estado final del último test.

Dibujar con un diagrama estático la relación entre los tipos Viaje, Reserva y Vehículo (y las entidades que las implementan).