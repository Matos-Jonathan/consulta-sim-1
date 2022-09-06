require "test_helper"

class ConsultaTest < ActiveSupport::TestCase

  test "criando consulta" do
    medico = Medico.new nome: 'Chooper o Adorador de Algodao Doce', cpf: '706.351.254-47', email: 'chooper@rodrigo.com',
                        especialidade: 'Clinico Geral', crm: '123456'
    assert medico.save

    paciente = Paciente.new nome: "Jonathan", data_nascimento: "06-06-1990", cpf: "706.351.254-47",
                            email: "jonathan2018.matos@gmail.com"
    assert paciente.save

    consulta = Consulta.new data: "13-09-2022", horario: "15:00", medico_id: medico.id, paciente_id: paciente.id

    assert consulta.save
  end

  test "criando consulta com horario invalido" do
    medico = Medico.new nome: 'Chooper o Adorador de Algodao Doce', cpf: '706.351.254-47', email: 'chooper@rodrigo.com',
                        especialidade: 'Clinico Geral', crm: '123456'
    assert medico.save

    paciente = Paciente.new nome: "Jonathan", data_nascimento: "06-06-1990", cpf: "706.351.254-47",
                            email: "jonathan2018.matos@gmail.com"
    assert paciente.save

    consulta = Consulta.new data: "13-09-2022", horario: "12:00", medico_id: medico.id, paciente_id: paciente.id

    assert_not consulta.save
  end

  test "criando consulta com paciente invalido" do
    medico = Medico.new nome: 'Chooper o Adorador de Algodao Doce', cpf: '706.351.254-47', email: 'chooper@rodrigo.com',
                        especialidade: 'Clinico Geral', crm: '123456'
    assert medico.save

    paciente = Paciente.new nome: "Jonathan", data_nascimento: "06-06-1990", cpf: "706.351.254-47",
                            email: "jonathan2018.matos@gmail.com"

    consulta = Consulta.new data: "13-09-2022", horario: "11:00", medico_id: medico.id, paciente_id: paciente.id

    assert_not consulta.save
  end
end
