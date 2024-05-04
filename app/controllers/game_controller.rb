class GameController < ApplicationController
  def create
    @game = Game.new
    @game.save
    hit_box = HitBox.new(x_start: 0, x_end: 5, y_start: 0, y_end: 5, image_id: 0)
    @game.hit_boxes << hit_box
    render json: @game.hit_boxes
  end
end
