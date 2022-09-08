Given('estou na pagina de paciente') do
  visit 'pacientes/new'
  expect(page).to have_content('New paciente')
end

Given('o paciente de cpf {string} existe') do |cpf|
  fill_in 'paciente[nome]', with: 'Jonathan Matos'
  fill_in 'paciente[data_nascimento]', with: '06-06-1996'
  fill_in 'paciente[cpf]', with: cpf
  fill_in 'paciente[email]', with: 'jonathan@gmail.com'
  fill_in 'paciente[endereco_attributes][logradouro]', with: 'rua Alipio'
  fill_in 'paciente[endereco_attributes][complemento]', with: 'pracinha'
  fill_in 'paciente[endereco_attributes][cep]', with: '55292-470'
  fill_in 'paciente[endereco_attributes][bairro]', with: 'Boa Vista'
  fill_in 'paciente[endereco_attributes][cidade]', with: 'Garanhuns'

  click_button 'Create Paciente'
  expect(page).to have_content(cpf)
end

When('eu clico em remover o medico com cpf {string}') do |string|
  click_button 'Destroy this paciente'
end

Then('eu vejo uma mensagem que o paciente foi apagado com sucesso') do
  expect(page).to have_content('Paciente was successfully destroyed.')
end

Given('o paciete de nome {string}, data nascimento {string}, cpf {string}, email {string}, logradouro {string}, complemento {string}, cep {string}, bairro {string}, cidade {string}') do |nome, data_nascimento, cpf, email, logradouro, complemento, cep, bairro, cidade|
  fill_in 'paciente[nome]', with: nome
  fill_in 'paciente[data_nascimento]', with: data_nascimento
  fill_in 'paciente[cpf]', with: cpf
  fill_in 'paciente[email]', with: email
  fill_in 'paciente[endereco_attributes][logradouro]', with: logradouro
  fill_in 'paciente[endereco_attributes][complemento]', with: complemento
  fill_in 'paciente[endereco_attributes][cep]', with: cep
  fill_in 'paciente[endereco_attributes][bairro]', with: bairro
  fill_in 'paciente[endereco_attributes][cidade]', with: cidade

  click_button 'Create Paciente'
  expect(page).to have_content(cpf)
end

Given('Clico em editar paciente') do
  click_link 'Edit this paciente'
  expect(page).to have_content("Editing paciente")
end

When('eu atualizo o email, cep do paciente para {string}, {string}') do |email, cep|

  fill_in 'paciente[email]', with: email
  fill_in 'paciente[endereco_attributes][cep]', with: cep
  click_button 'Update Paciente'
end

Then('vejo a mensagem que paciente foi atualizado com sucesso') do
  expect(page).to have_content('Paciente was successfully updated.')
end

Given('estou na pagina de cadastrar paciente') do
  visit 'pacientes/new'
  expect(page).to have_content('New paciente')
end

When('eu preencho os campos de nome {string}, data nascimento {string}, cpf {string}, email {string}, logradouro {string}, complemento {string}, cep {string}, bairro {string}, cidade {string}') do |nome, data_nascimento, cpf, email, logradouro, complemento, cep, bairro, cidade|
  fill_in 'paciente[nome]', with: nome
  fill_in 'paciente[data_nascimento]', with: data_nascimento
  fill_in 'paciente[cpf]', with: cpf
  fill_in 'paciente[email]', with: email
  fill_in 'paciente[endereco_attributes][logradouro]', with: logradouro
  fill_in 'paciente[endereco_attributes][complemento]', with: complemento
  fill_in 'paciente[endereco_attributes][cep]', with: cep
  fill_in 'paciente[endereco_attributes][bairro]', with: bairro
  fill_in 'paciente[endereco_attributes][cidade]', with: cidade

end

When('eu clico em cadastrar paciente') do
  click_button 'Create Paciente'
end

Then('eu vejo uma mensagem que paciente foi cadastrado com sucesso') do
  expect(page).to have_content('Paciente was successfully created.')
end
