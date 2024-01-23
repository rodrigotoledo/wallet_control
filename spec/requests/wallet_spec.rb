# spec/requests/wallet_spec.rb

require 'rails_helper'

RSpec.describe 'Wallet', type: :request do
  describe 'GET /' do
    context 'when the user is logged in' do
      let(:user) { create(:user, :with_profile) }

      before do
        sign_in user
        get wallet_path
      end

      it 'responds successfully' do
        expect(response).to have_http_status(:success)
      end
    end
  end
end
