class CreateScores < ActiveRecord::Migration[7.1]
  def change
    create_table :scores do |t|
      t.string :player_name
      t.float :how_long_to_beat

      t.timestamps
    end
  end
end
