class GameController < ApplicationController
  def create
    @game = Game.new
    @game.save
    hit_box = HitBox.find 1
    @game.hit_boxes << hit_box
    render json: @game.hit_boxes
  end
end
