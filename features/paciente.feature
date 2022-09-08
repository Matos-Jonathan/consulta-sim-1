Feature: Paciente
  As a paciente nao cadastrado
  I want to me cadastrar, remover e editar meu cadastro
  So that eu marcar uma consulta


  Scenario: remover paciente
    Given estou na pagina de paciente
    And o paciente de cpf '706.351.254-47' existe
    When eu clico em remover o medico com cpf '706.351.254-47'
    Then eu vejo uma mensagem que o paciente foi apagado com sucesso

  Scenario: editar paciente
    Given estou na pagina de paciente
    And o paciete de nome 'Jonathan Matos', data nascimento '06-06-1996', cpf '706.351.254-47', email 'jonathan@gmail.com', logradouro 'rua Alipio', complemento 'pracinha', cep '55292-470', bairro 'Boa Vista', cidade 'Garanhuns'
    And Clico em editar paciente
    When eu atualizo o email, cep do paciente para 'Weverton2@gmail.com', '55292-570'
    Then vejo a mensagem que paciente foi atualizado com sucesso

  Scenario: cadastrar paciente
    Given estou na pagina de cadastrar paciente
    When eu preencho os campos de nome 'Jonathan Matos', data nascimento '06-06-1996', cpf '706.351.254-47', email 'jonathan@gmail.com', logradouro 'rua Alipio', complemento 'pracinha', cep '55292-470', bairro 'Boa Vista', cidade 'Garanhuns'
    And eu clico em cadastrar paciente
    Then eu vejo uma mensagem que paciente foi cadastrado com sucesso