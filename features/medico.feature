Feature: Medico
  As a eu como medico
  I want to cadastrar, remover e editar meu cadastro
  So that eu nao tenha que fazer isso de forma manual ou presencial


  Scenario: remover medico
    Given estou na pagina de medico
    And o medico com CRM '11223' existe
    When eu clico em remover o medico com CRM '11223'
    Then eu vejo uma mensagem que o medico foi apagado com sucesso

  Scenario: cadastrar medico
    Given estou na pagina de cadastrar medico
    When eu preencho os campos de nome 'Jonathan Matos', cpf '706.351.254-47', email 'jonathan@gmail.com', especialidade 'Pediatra' e crm '12333'
    And eu clico em cadastrar novo medico
    Then eu vejo uma mensagem que o medico foi cadastrado com sucesso

  Scenario: editar medico
    Given estou na pagina de medico
    And O medico de nome 'Jonathan Weverton', cpf '706.351.254-47', email 'jonathan@gmail.com', especialidade 'Pediatra' e crm '12333'
    And Clico em editar medico
    When eu atualizo o email para 'Weverton2@gmail.com'
    And clico em atualizar medico
    Then vejo a mensagem que medico foi atualizado com sucesso