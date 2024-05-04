class CreateGameHitBoxes < ActiveRecord::Migration[7.1]
  def change
    create_table :game_hit_boxes do |t|
      t.integer :game_id
      t.integer :hit_box_id
      t.boolean :cleared

      t.timestamps
    end
  end
end
