require 'rails_helper'

RSpec.describe "Visits", :type => :request do
  describe "GET /visits" do
    it "works! (now write some real specs)" do
      get visits_path
      expect(response.status).to be(200)
    end
  end
end
