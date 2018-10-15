require 'rails_helper'

RSpec.describe "LangAttributes", type: :request do
  describe "GET /lang_attributes" do
    it "works! (now write some real specs)" do
      get lang_attributes_path
      expect(response).to have_http_status(200)
    end
  end
end
