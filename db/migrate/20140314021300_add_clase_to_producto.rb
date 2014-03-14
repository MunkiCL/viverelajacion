class AddClaseToProducto < ActiveRecord::Migration
  def self.up
    change_table :productos do |t|
      t.string :clase
    end
  end

  def self.down
    remove_column :productos, :clase
  end
end
