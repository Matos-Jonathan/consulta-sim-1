require "test_helper"

class PacienteTest < ActiveSupport::TestCase

  test "criando paciente corretamente" do
    paciente = Paciente.new nome: "Jonathan", data_nascimento: "06-06-1990", cpf: "706.351.254-47",
                            email: "jonathan2018.matos@gmail.com"

    assert paciente.save!
  end

  test "criando paciente com data de nascimento incorreta" do
    paciente = Paciente.new nome: "Jonathan", data_nascimento: "06-06-2023", cpf: "706.351.254-47",
                            email: "jonathan2018.matos@gmail.com"

    assert_not paciente.save
  end
end
