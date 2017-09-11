class AddImgToPicGals < ActiveRecord::Migration[5.1]
  def change
    add_attachment :pic_gals, :img, :after => :title    
  end
end
