require 'rails_helper'

RSpec.describe 'User Registration', type: :request do
  describe 'POST /users' do
    it 'permits specific parameters for sign up' do
      user_attributes = attributes_for(:user)

      post user_registration_path, params: { user: user_attributes }
      expect(response).to redirect_to(root_path)
    end
  end
end
