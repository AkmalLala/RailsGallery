class CreatePicGals < ActiveRecord::Migration[5.1]
  def change
    create_table :pic_gals do |t|
      t.string :title
      t.string :img
      t.text :notes

      t.timestamps
    end
  end
end
