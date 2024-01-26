# spec/requests/custom_registrations_spec.rb

require 'rails_helper'

RSpec.describe 'CustomRegistrations', type: :request do
  describe 'DELETE /cancel_registration' do
    let(:user) { create(:user, :with_profile) }

    before do
      sign_in user
    end

    it 'cancels user registration' do
      get cancel_registration_path
      expect(response).to redirect_to(root_path)
    end
  end
end
