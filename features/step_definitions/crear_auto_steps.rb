
Given("visito la pagina setup_secuencia") do
    visit '/setup_secuencia'
  end
  
  Given("ingreso {string} y {string} en los campos {string} y {string}") do |int, int2, string, string2|
    fill_in(string, :with => int)
    fill_in(string2, :with => int2) 
  end
  
  Given("ingreso la orientacion {string} en el campo {string}") do |string, string2|
    fill_in(string2, :with => string)

  end
  
  Then("deberia mostrar mensaje {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end
  
  Given("ingreso {int} autos en el campo {string}") do |int, string|
    fill_in(string, :with => int)
  end
  