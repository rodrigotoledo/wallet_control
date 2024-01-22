# spec/requests/profiles_request_spec.rb
require 'rails_helper'

RSpec.describe 'Profiles', type: :request do
  let!(:user) { create(:user) }
  
  before { sign_in user }
  
  describe 'GET profile' do
    it 'renders the show template' do
      get profile_path
      expect(response).to render_template(:show)
    end
  end

  describe 'CREATE profile' do
    it 'redirects to the first wizard step' do
      post profile_path
      expect(response).to redirect_to(wizard_path(Profile.wizard_steps.first))
    end
  end
  
  describe 'PATCH profile' do
    let!(:profile) { create(:profile, user: user, status: 'active') }
    let(:params) do
      {
        profile: attributes_for(:profile)
      }
    end

    it 'updates the profile and renders the wizard step' do
      patch '/profile', params: params
      expect(response).to render_template(:more_info)
      user.profile.reload
      expect(user.profile.first_name).to eq('John')
      expect(user.profile.last_name).to eq('Doe')
      expect(user.profile.address).to eq('123 Main St')
      expect(user.profile.phone).to eq('555-1234')
    end

    it 'renders the last wizard step and sets profile status to active' do
      patch '/profiles', params: params
      expect(response).to render_template(:more_info)
      user.profile.reload
      expect(user.profile.status).to eq('active')
    end
  end
end
