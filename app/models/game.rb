class Game < ApplicationRecord
  has_many :game_hit_boxes
  has_many :hit_boxes, through: :game_hit_boxes, source: :hit_box
end
