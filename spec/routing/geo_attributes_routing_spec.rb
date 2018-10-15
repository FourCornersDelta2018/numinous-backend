require "rails_helper"

RSpec.describe GeoAttributesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/geo_attributes").to route_to("geo_attributes#index")
    end

    it "routes to #show" do
      expect(:get => "/geo_attributes/1").to route_to("geo_attributes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/geo_attributes").to route_to("geo_attributes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/geo_attributes/1").to route_to("geo_attributes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/geo_attributes/1").to route_to("geo_attributes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/geo_attributes/1").to route_to("geo_attributes#destroy", :id => "1")
    end
  end
end
