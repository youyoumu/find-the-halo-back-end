class GameController < ApplicationController
  def new
    @game = Game.new
    @game.save
    hit_box = HitBox.find 1
    @game.hit_boxes << hit_box

    render json: 0
  end
end
