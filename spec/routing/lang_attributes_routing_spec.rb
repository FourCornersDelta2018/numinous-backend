require "rails_helper"

RSpec.describe LangAttributesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/lang_attributes").to route_to("lang_attributes#index")
    end

    it "routes to #show" do
      expect(:get => "/lang_attributes/1").to route_to("lang_attributes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/lang_attributes").to route_to("lang_attributes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lang_attributes/1").to route_to("lang_attributes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lang_attributes/1").to route_to("lang_attributes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lang_attributes/1").to route_to("lang_attributes#destroy", :id => "1")
    end
  end
end
