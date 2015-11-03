Feature: Scorer tennis
	In order to get the homework done
	As a programmer student
	I want to test this framework

	Scenario: Welcome to Scorer
		Given estoy en la pagina de inicio
		Then la pagina muestra "Bienvenido a Scorer"

	Scenario: Begin Game
		Given estoy en la pagina de inicio
		And hago click en el enlace "New Game"
		Then la pagina muestra "New Game"
		And la pagina muestra "0 - 0"

	Scenario: Show Player 1 scored button
		Given estoy en la pagina de juego
		Then la pagina muestra un boton que dice "Player 1 scored"

	Scenario: Show Player 2 scored button
		Given estoy en la pagina de juego
		Then la pagina muestra un boton que dice "Player 2 scored"

	Scenario: Player 1 scores
		Given estoy en la pagina de juego
		When hago click en el boton 'Player 1 scored'
		Then la pagina me muestra el score "15 - 0"

	Scenario: Player 2 scores
		Given estoy en la pagina de juego
		When hago click en el boton 'Player 2 scored'
		Then la pagina me muestra el score "0 - 15"