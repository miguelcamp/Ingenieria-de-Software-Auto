Given("visito la pagina principal") do
  visit '/'        
  end
  
  Given("Ingreso dimensiones {int} y {int} en los campos {string} y {string}") do |int, int2, string, string2|
    fill_in(string, :with => int)
    fill_in(string2, :with => int2)  
  end
  
  When("presiono el boton {string}") do |string|
    click_button(string)
  end
  
  Then("deberia ir a la pagina de ingreso de instrucciones") do
    visit '/setup_secuencia'
  end
  
  Then("deberia mostrar error {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end