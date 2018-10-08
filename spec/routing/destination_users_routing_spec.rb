require "rails_helper"

RSpec.describe DestinationUsersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/destination_users").to route_to("destination_users#index")
    end

    it "routes to #show" do
      expect(:get => "/destination_users/1").to route_to("destination_users#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/destination_users").to route_to("destination_users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/destination_users/1").to route_to("destination_users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/destination_users/1").to route_to("destination_users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/destination_users/1").to route_to("destination_users#destroy", :id => "1")
    end
  end
end
