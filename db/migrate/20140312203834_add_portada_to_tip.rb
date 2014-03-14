class AddPortadaToTip < ActiveRecord::Migration
  def self.up
    add_attachment :tips, :portada
  end

  def self.down
    remove_attachment :tips, :portada
  end
end
