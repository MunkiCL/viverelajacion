class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :titulo
      t.string :image
      t.string :texto

      t.timestamps
    end
  end
end
