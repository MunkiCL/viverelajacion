require 'spec_helper'

describe "productos/edit" do
  before(:each) do
    @producto = assign(:producto, stub_model(Producto,
      :nombre => "MyString",
      :precio => "",
      :descripcion => "MyText"
    ))
  end

  it "renders the edit producto form" do
    render

    assert_select "form[action=?][method=?]", producto_path(@producto), "post" do
      assert_select "input#producto_nombre[name=?]", "producto[nombre]"
      assert_select "input#producto_precio[name=?]", "producto[precio]"
      assert_select "textarea#producto_descripcion[name=?]", "producto[descripcion]"
    end
  end
end
