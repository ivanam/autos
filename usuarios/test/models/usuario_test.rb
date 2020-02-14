require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
  test 'valid user' do
    usuario = Usuario.new(name: 'Maria', email: 'iva.moyano88@gmail.com', phone: '12345678')
    assert usuario.valid?
  end

  test 'invalid without name' do
    usuario = Usuario.new(email: 'iva.moyano@gmail.com', phone: '12345678')
    refute usuario.valid?, 'usuario is valid without a name'
    assert_not_nil usuario.errors[:name], 'no validation error for name present'
  end

  test 'invalid without email' do
    usuario = Usuario.new(name: 'Maria')
    refute usuario.valid?
    assert_not_nil usuario.errors[:email]
  end
end
