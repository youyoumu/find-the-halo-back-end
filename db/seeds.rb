# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

hit_box = HitBox.new(x_start: 35.12841756420878, x_end: 36.454018227009115, y_start: 20.32587682960508, y_end: 22.682500230139006, image_id: 0)
hit_box.save

hit_box2 = HitBox.new(x_start: 63.38028169014085, x_end: 66.44573322286661, y_start: 26.95388014360674, y_end: 32.550860719874805, image_id: 0)
hit_box2.save

hit_box3 = HitBox.new(x_start: 35.87406793703397, x_end: 39.6023198011599, y_start: 53.02402651201326, y_end: 56.55896161281414, image_id: 0)
hit_box3.save

score = Score.new(player_name: "player 1", how_long_to_beat: "00:60:00")
score.save
