require 'spec_helper'
describe "Tips View" do

    it "Show the correct home content" do
        get '/tips'
        expect(response.status).to be(200)
    end


end
