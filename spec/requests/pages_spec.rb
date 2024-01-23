# spec/requests/pages_spec.rb

require 'rails_helper'

RSpec.describe 'Pages', type: :request do
  describe 'GET /' do
    context 'when the user is logged in' do
      let(:user) { create(:user, :with_profile) }

      before do
        sign_in user
        get root_path
      end

      it 'responds successfully' do
        expect(response).to have_http_status(:success)
      end
    end

    context 'when the user is not logged in' do
      before do
        get root_path
      end

      it 'redirects to the login page' do
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end
