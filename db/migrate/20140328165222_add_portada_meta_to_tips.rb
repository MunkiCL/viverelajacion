class AddPortadaMetaToTips < ActiveRecord::Migration
  def change
    add_column :tips, :portada_meta, :text
  end
end