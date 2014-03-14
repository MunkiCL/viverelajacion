require 'spec_helper'

describe "productos/new" do
  before(:each) do
    assign(:producto, stub_model(Producto,
      :nombre => "MyString",
      :precio => "",
      :descripcion => "MyText"
    ).as_new_record)
  end

  it "renders new producto form" do
    render

    assert_select "form[action=?][method=?]", productos_path, "post" do
      assert_select "input#producto_nombre[name=?]", "producto[nombre]"
      assert_select "input#producto_precio[name=?]", "producto[precio]"
      assert_select "textarea#producto_descripcion[name=?]", "producto[descripcion]"
    end
  end
end
