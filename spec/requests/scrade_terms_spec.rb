require 'rails_helper'

RSpec.describe "ScradeTerms", type: :request do
  describe "GET /scrade_terms" do
    it "works! (now write some real specs)" do
      get scrade_terms_path
      expect(response).to have_http_status(200)
    end
  end
end
