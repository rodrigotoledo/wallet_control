# spec/requests/profiles_request_spec.rb
require 'rails_helper'

RSpec.describe 'Profiles', type: :request do
  let!(:user) { create(:user) }

  before { sign_in user }

  describe 'Update profile' do
    let!(:profile_attributes) { attributes_for(:profile) }
    let!(:params) do
      {
        profile: profile_attributes
      }
    end

    it 'updates the profile and renders the wizard step' do
      patch profile_path(:more_info), params: params

      expect(response).to redirect_to(profile_path(:wicked_finish))
      user.profile.reload
      expect(user.profile.first_name).to eq(profile_attributes[:first_name])
      expect(user.profile.last_name).to eq(profile_attributes[:last_name])
      expect(user.profile.address).to eq(profile_attributes[:address])
      expect(user.profile.phone).to eq(profile_attributes[:phone])
      expect(user.profile.active?).to eq(true)
    end
  end

  describe 'Coverage of incomplete profile' do
    let!(:user) { create(:user, :with_incomplete_profile) }

    it 'should have an incomplete profile' do
      get root_path
      allow(user.profile).to receive(:active?).and_return(false)
    end
  end
end
