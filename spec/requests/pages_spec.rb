require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET welcome of application" do
    it "returns http success" do
      get welcome_path
      expect(response).to have_http_status(:success)
    end
  end
end
