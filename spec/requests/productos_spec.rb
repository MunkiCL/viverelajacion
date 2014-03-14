require 'spec_helper'

describe "Productos" do
  describe "GET /productos" do
    it "works! (now write some real specs)" do
      get productos_path
      expect(response.status).to be(200)
    end
  end
end
