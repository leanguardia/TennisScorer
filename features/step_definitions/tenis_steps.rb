##GIVENS

Given(/^estoy en la pagina de inicio$/) do
	visit '/'
end

Given(/^estoy en la pagina de juego$/) do
	visit 'game'
end

Given(/^hago click en el enlace "([^"]*)"$/) do |link|
	click_link(link)
end

When(/^hago click en el boton 'Player (\d+) scored'$/) do |button|
	click_button(button)
end

##THENS

Then(/^la pagina muestra "([^"]*)"$/) do |text|
	expect(last_response.body) =~ /#{text}/m
end

Then(/^la pagina muestra un boton que dice "([^"]*)"$/) do |text|
	expect(last_response.body) =~ /#(text)/m
end

Then(/^la pagina me muestra el score "([^"]*)"$/) do |text|
	expect(last_response.body) =~ /#(text)/m
end
