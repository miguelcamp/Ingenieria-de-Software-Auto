
Given("Ingreso la cantidad de autos {int} en los campos {string}") do |value, field|
    fill_in(field, :with => value)
  end