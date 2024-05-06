class GameController < ApplicationController
  def new
    @game = Game.new
    hit_box = HitBox.find 1
    @game.hit_boxes << hit_box
    @game.save
    data = {
      game_id: @game.id,
      image_id: 0
    }

    render json: data
  end

  def create
    puts "params", params
    @game = Game.find params[:game_id]
    @hit_box = @game.hit_boxes.where(image_id: params[:image_id]).first
    puts @hit_box.attributes
    if params[:x] > @hit_box.x_start && params[:x] < @hit_box.x_end && params[:y] > @hit_box.y_start && params[:y] < @hit_box.y_end
      puts "hit"
    else
      puts "miss"
    end
  end
end
