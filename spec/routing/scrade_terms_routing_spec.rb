require "rails_helper"

RSpec.describe ScradeTermsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/scrade_terms").to route_to("scrade_terms#index")
    end

    it "routes to #new" do
      expect(:get => "/scrade_terms/new").to route_to("scrade_terms#new")
    end

    it "routes to #show" do
      expect(:get => "/scrade_terms/1").to route_to("scrade_terms#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/scrade_terms/1/edit").to route_to("scrade_terms#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/scrade_terms").to route_to("scrade_terms#create")
    end

    it "routes to #update" do
      expect(:put => "/scrade_terms/1").to route_to("scrade_terms#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/scrade_terms/1").to route_to("scrade_terms#destroy", :id => "1")
    end

  end
end
