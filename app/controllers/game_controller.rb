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
    data = {
      hit: false
    }
    if params[:x] > @hit_box.x_start && params[:x] < @hit_box.x_end && params[:y] > @hit_box.y_start && params[:y] < @hit_box.y_end
      puts "hit"
      @game.game_hit_boxes.where(hit_box_id: @hit_box.id).first.update(cleared: true)
      data[:hit] = true
      data[:coordinates] = {x_start: @hit_box.x_start, x_end: @hit_box.x_end, y_start: @hit_box.y_start, y_end: @hit_box.y_end}
    else
      puts "miss"
    end
    puts @game.game_hit_boxes.where(hit_box_id: @hit_box.id).first.attributes

    render json: data
  end
end
