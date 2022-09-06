require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test 'criando medico corretamente' do
    medico = Medico.new nome: 'Chooper o Adorador de Algodao Doce', cpf: '706.351.254-47', email: 'chooper@rodrigo.com',
                        especialidade: 'Clinico Geral', crm: '123456'
    assert medico.save
  end

  test 'criando medico com email vazio' do
    medico = Medico.new nome: 'Chooper o Adorador de Algodao Doce', cpf: '706.351.254-47', email: ' ',
                        especialidade: 'Clinico Geral', crm: '123456'
    assert_not medico.save
  end

  test 'atualizando email incorretamente' do
    medico = Medico.new nome: 'Chooper o Adorador de Algodao Doce', cpf: '706.351.254-47', email: 'chooper@rodrigo.com',
                        especialidade: 'Clinico Geral', crm: '123456'

    medico.email = " "
    assert_not medico.save
  end

  test 'atualizando especialidade corretamente' do
    medico = Medico.new nome: 'Chooper o Adorador de Algodao Doce', cpf: '706.351.254-47', email: 'chooper@rodrigo.com',
                        especialidade: 'Clinico Geral', crm: '123456'

    medico.especialidade  = 'Cirurgão Geral'
    assert medico.save
  end
end
