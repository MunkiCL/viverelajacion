require 'spec_helper'
describe "Store View" do

    it "Show the correct home content" do
        get '/store'
        expect(response.status).to be(200)
    end


end
