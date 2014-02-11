require 'spec_helper'

describe ServiciosController do

  describe "GET 'masajes'" do
    it "returns http success" do
      get 'masajes'
      response.should be_success
    end
  end

  describe "GET 'kine'" do
    it "returns http success" do
      get 'kine'
      response.should be_success
    end
  end

  describe "GET 'gym'" do
    it "returns http success" do
      get 'gym'
      response.should be_success
    end
  end

end
