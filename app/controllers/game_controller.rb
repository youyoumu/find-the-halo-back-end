class GameController < ApplicationController
  def new
    @game = Game.new
    @game.save
    hit_box = HitBox.find 1
    @game.hit_boxes << hit_box
    data = {
      game_id: @game.id,
      image_id: 0
    }

    render json: data
  end

  def create
    puts "params :"
    puts params
  end
end
