Feature:
Como Jugador 
Quiero Ingresar la posición inicial del auto 
Para poder definir donde comenzará el auto


Scenario:Ingresar posicion inicial del auto
Given visito la pagina setup_secuencia
And ingreso "1" y "2" en los campos "X1" y "Y1"
And ingreso la orientacion "N" en el campo "orientacion1"
When presiono el boton "Simular"
Then deberia mostrar mensaje "X: 1 , Y: 2 Ori.: N"

Scenario:Ingreso valores negativos
Given visito la pagina setup_secuencia
And ingreso "1" y "2" en los campos "X1" y "Y1"
And ingreso la orientacion "N" en el campo "orientacion1"
When presiono el boton "Simular"
Then deberia mostrar mensaje "X: 1 , Y: 2 Ori.: N"

Scenario: Ingresar mas de un auto
Given visito la pagina principal
And ingreso 2 autos en el campo "num"
When presiono el boton "Ingresar Dimensiones"
Then deberia mostrar mensaje "Autos: 2"