require 'spec_helper'

describe "productos/show" do
  before(:each) do
    @producto = assign(:producto, stub_model(Producto,
      :nombre => "Nombre",
      :precio => "",
      :descripcion => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
