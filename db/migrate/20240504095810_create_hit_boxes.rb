class CreateHitBoxes < ActiveRecord::Migration[7.1]
  def change
    create_table :hit_boxes do |t|
      t.integer :image_id
      t.float :x_start
      t.float :x_end
      t.float :y_start
      t.float :y_end

      t.timestamps
    end
  end
end
