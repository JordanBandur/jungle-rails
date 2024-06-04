require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'is valid with valid attributes' do
      user = User.new(
        first_name: 'John',
        last_name: 'Doe',
        email: 'test@example.com',
        password: 'password',
        password_confirmation: 'password'
      )

      expect(user).to be_valid
    end
  end

  it 'is not valid with a short password' do 
    user = User.new(password: 'short', password_confirmation: 'short')

    expect(user).not_to be_valid
    expect(user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
  end

  describe '.authenticate_with_credentials' do
    before(:each) do
      @user = User.create(
        first_name: 'John',
        last_name: 'Doe',
        email: 'test@example.com',
        password: 'password',
        password_confirmation: 'password'
      )
    end

    it 'authenticates with valid credentials' do
      authenticated_user = User.authenticate_with_credentials('test@example.com', 'password')
      expect(authenticated_user).to eq(@user)
    end

    it 'does not authenticate with invalid credentials' do
      authenticated_user = User.authenticate_with_credentials('test@example.com', 'wrong_password')
      expect(authenticated_user).to be_nil
    end

    it 'authenticates even if there are leading/trailing spaces in the email' do
      authenticated_user = User.authenticate_with_credentials('  test@example.com  ', 'password')
      expect(authenticated_user).to eq(@user)
    end

    it 'authenticates even if the email has wrong case' do
      authenticated_user = User.authenticate_with_credentials('TEST@EXAMPLE.COM', 'password')
      expect(authenticated_user).to eq(@user)
    end
  end
end