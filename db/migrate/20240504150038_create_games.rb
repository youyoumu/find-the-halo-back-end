class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.datetime :cleared_at
      t.timestamps
    end
  end
end
