require 'spec_helper'
describe "Home View" do

    it "Show the correct home content" do
        get '/'
        expect(response.status).to be(200)
    end

    it 'Show Last Tip' do
        tip1 = FactoryGirl.create(:tip)
        tip2 = FactoryGirl.create(:tip)
        visit root_url
        expect(page).to have_content(tip2.titulo)
    end
end
