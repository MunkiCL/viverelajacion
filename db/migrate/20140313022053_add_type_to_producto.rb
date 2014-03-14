class AddTypeToProducto < ActiveRecord::Migration
  def self.up
    change_table :productos do |t|
      t.string :type
    end
  end

  def self.down
    drop_attached_file :productos, :type
  end
end
