require 'rails_helper'

RSpec.describe Devise::RegistrationsController, type: :controller do
  before(:each) do
    @request.env["devise.mapping"] = Devise.mappings[:user]
  end

  context 'Sign up' do
    it 'renders registration form' do
      get :new
      expect(response).to render_template(:new)
    end

    it 'creates new user record' do
      pwd_base = Faker::Internet.password(8, 16)
      expect do
        post :create, user: {
          email:                 Faker::Internet.email,
          password:              pwd_base,
          password_confirmation: pwd_base
        }
      end.to change{ User.count }.by(1)
    end
  end
end
