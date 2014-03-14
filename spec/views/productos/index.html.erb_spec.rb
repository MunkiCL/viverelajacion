require 'spec_helper'

describe "productos/index" do
  before(:each) do
    assign(:productos, [
      stub_model(Producto,
        :nombre => "Nombre",
        :precio => "",
        :descripcion => "MyText"
      ),
      stub_model(Producto,
        :nombre => "Nombre",
        :precio => "",
        :descripcion => "MyText"
      )
    ])
  end

  it "renders a list of productos" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
