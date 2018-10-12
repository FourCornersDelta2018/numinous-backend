require 'rails_helper'

RSpec.describe "DestinationUsers", type: :request do
  describe "GET /destination_users" do
    it "works!" do
      get destination_users_path
      expect(response).to have_http_status(200)
    end
  end
end
