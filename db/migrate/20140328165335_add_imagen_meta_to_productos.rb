class AddImagenMetaToProductos < ActiveRecord::Migration
  def change
    add_column :productos, :imagen_meta, :text
  end
end