class TipTextoAsText < ActiveRecord::Migration
  def self.up
    change_column :tips, :texto, :text
  end

  def self.down
    change_column :tips, :texto, :string
  end
end
