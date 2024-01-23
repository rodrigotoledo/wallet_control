# spec/models/user_spec.rb

require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { build(:user) }

  describe 'validations' do
    it { should validate_presence_of(:user_type) }
  end

  describe 'callbacks' do
    it 'sets default user_type before create' do
      user = build(:user)
      user.save
      expect(user.user_type).to eq('responsible')
    end
  end

  describe 'traits' do
    it { expect(build(:user, :spouse)).to be_valid }
    it { expect(build(:user, :child)).to be_valid }
    it { expect(build(:user, :employee)).to be_valid }
    it { expect(build(:user, :other)).to be_valid }
  end
end
