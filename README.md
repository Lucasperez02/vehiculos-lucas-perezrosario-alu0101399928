# Práctica 6: Desarrollo Dirigido por Pruebas (Lucas Pérez Rosario)

Esta práctica se basará en desarrollar una clase Vehiculo que tendrá una serie de atributos o variables de instancia,al igual que algún
setter y una función para calcular la autonomía del coche según una cantidad de combustible, en litros o galones.
La clase vehiculo tendrá como atributos: id, fabricante, modelo, año, precio, propietarios, mpg, una variable que indica si es o no un vehiculo de ocasión y otra
que indica el tipo de galón utilizado en millas por galón (mpg).

DOCUMENTACIÓN:

## Expectativas del Initialize e Initialize de la clase vehiculo
Primer commit después de haber definido las expectativas del initialize del vehículo y también el propio initialize en la clase Vehiculo
En el initialize, haciendo uso de excepciones, se comprueba que las variables cumplen todos los requisitos antes de ser instanciadas.

## Expectativas del set_nuevo_propietario
Segundo commit después de haber definido las expectativas para la función de insertar un nuevo propietario y también el propio método en la clase
Vehiculo. Este método inserta un nuevo propietario siempre que no sea un vehiculo de ocasión.

## Expectativas probando la función to_s y desarrollo del propio método
Tercer commit después de definir las expectativas para el to_s y también el desarrollo del método en la clase Vehiculo
El método sirve para mostrar la información del vehiculo como string

## Expectativa probando la función distancia_x_combustible y desarrollo del propio vehiculo
Cuarto commit después de definir las expectativas para distancia_x_combustible y desarrollo de la propia función
Esta función calcula la distancia que podrá recorrer un coche utilizando una cantidad de combustible. A la función se le pasará la cantidad y la unidad de medida del combustible y dependiendo de si es litros o galones y de si mpg del vehiculo están definidas como de USA o de UK calculará la distancia.
