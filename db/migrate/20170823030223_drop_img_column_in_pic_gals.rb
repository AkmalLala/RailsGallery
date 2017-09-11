class DropImgColumnInPicGals < ActiveRecord::Migration[5.1]
  def change
    remove_column :pic_gals, :img
  end
end
