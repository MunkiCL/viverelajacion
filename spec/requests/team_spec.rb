require 'spec_helper'
describe "Team View" do

    it "Show the correct home content" do
        get '/equipo'
        expect(response.status).to be(200)
    end


end
