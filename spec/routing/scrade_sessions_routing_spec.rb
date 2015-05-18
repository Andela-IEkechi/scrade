require "rails_helper"

RSpec.describe ScradeSessionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/scrade_sessions").to route_to("scrade_sessions#index")
    end

    it "routes to #new" do
      expect(:get => "/scrade_sessions/new").to route_to("scrade_sessions#new")
    end

    it "routes to #show" do
      expect(:get => "/scrade_sessions/1").to route_to("scrade_sessions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/scrade_sessions/1/edit").to route_to("scrade_sessions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/scrade_sessions").to route_to("scrade_sessions#create")
    end

    it "routes to #update" do
      expect(:put => "/scrade_sessions/1").to route_to("scrade_sessions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/scrade_sessions/1").to route_to("scrade_sessions#destroy", :id => "1")
    end

  end
end
