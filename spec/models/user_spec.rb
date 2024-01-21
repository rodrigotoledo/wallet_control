# spec/models/user_spec.rb

require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { build(:user) }

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:password) }
  it { is_expected.to validate_length_of(:password).is_at_least(6) }
  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }
  it { is_expected.to validate_presence_of(:user_type) }
  it { is_expected.to validate_presence_of(:phone) }
  it { is_expected.to validate_presence_of(:address) }

  it { is_expected.to be_valid }

  describe 'traits' do
    it { expect(build(:user, :spouse)).to be_valid }
    it { expect(build(:user, :child)).to be_valid }
    it { expect(build(:user, :employee)).to be_valid }
    it { expect(build(:user, :other)).to be_valid }
  end
end
