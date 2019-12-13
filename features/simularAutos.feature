Feature:
Como jugador 
Quiero seleccionar la cantidad de autos 
Para para poder simular varios autos a la vez


Scenario: Ingresar numero de autos a simular
Given visito la pagina principal 
And Ingreso la cantidad de autos 3 en los campos "numAutos"
When presiono el boton "Siguiente"
Then deberia ir a la pagina de ingreso de instrucciones