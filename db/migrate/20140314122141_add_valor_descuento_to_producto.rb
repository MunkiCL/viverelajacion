class AddValorDescuentoToProducto < ActiveRecord::Migration
  def self.up
    change_table :productos do |t|
      t.integer :descuento
    end
  end

  def self.down
    remove_column :productos, :descuento
  end
end
