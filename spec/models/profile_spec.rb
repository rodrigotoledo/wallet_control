require 'rails_helper'

RSpec.describe Profile, type: :model do
  subject(:proile) { build(:profile) }

  describe 'validations' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:phone) }
    it { should validate_presence_of(:address) }
  end
end
