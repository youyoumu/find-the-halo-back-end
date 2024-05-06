# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
hit_box = HitBox.new(x_start: 0, x_end: 5, y_start: 0, y_end: 5, image_id: 0)
hit_box.save

hit_box2 = HitBox.new(x_start: 95, x_end: 100, y_start: 0, y_end: 5, image_id: 0)
hit_box2.save

score = Score.new(player_name: "player 1", how_long_to_beat: "00:60:00")
score.save
