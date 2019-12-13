Feature:

Como jugador 
Quiero definir el area de juego
Para para poder tener un mapa de las dimensiones ingresadas

Scenario: Ingresar dimensiones de terreno
Given visito la pagina principal
And Ingreso dimensiones 5 y 7 en los campos "tamX" y "tamY"
When presiono el boton "Siguiente"
Then deberia ir a la pagina de ingreso de instrucciones

Scenario: Ingresar dimensiones negativas de terreno
Given visito la pagina principal
And Ingreso dimensiones -5 y 7 en los campos "tamX" y "tamY"
When presiono el boton "Siguiente"
Then visito la pagina principal


Scenario: Ingresar dimensiones de terreno en 0
Given visito la pagina principal
And Ingreso dimensiones 0 y 3 en los campos "tamX" y "tamY"
When presiono el boton "Siguiente"
Then visito la pagina principal


Scenario: Ingresar dimensiones de terreno grandes
Given visito la pagina principal
And Ingreso dimensiones 15 y 20 en los campos "tamX" y "tamY"
When presiono el boton "Siguiente"
Then visito la pagina principal

