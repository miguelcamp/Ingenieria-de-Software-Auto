
Given("visito la pagina setup_secuencia") do
    visit '/setup_secuencia'
  end
  
  Given("ingreso {int} y {int} en los campos {string} y {string}") do |int, int2, string, string2|
    fill_in(string, :with => int)
    fill_in(string2, :with => int2) 
  end
  
  Given("ingreso la orientacion {string} en el campo {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("deberia mostrar mensaje {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  