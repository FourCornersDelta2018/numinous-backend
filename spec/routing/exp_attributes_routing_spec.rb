require "rails_helper"

RSpec.describe ExpAttributesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/exp_attributes").to route_to("exp_attributes#index")
    end

    it "routes to #show" do
      expect(:get => "/exp_attributes/1").to route_to("exp_attributes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/exp_attributes").to route_to("exp_attributes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/exp_attributes/1").to route_to("exp_attributes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/exp_attributes/1").to route_to("exp_attributes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/exp_attributes/1").to route_to("exp_attributes#destroy", :id => "1")
    end
  end
end
