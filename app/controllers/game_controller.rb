class GameController < ApplicationController
  def new
    @game = Game.new
    @game.hit_boxes << HitBox.find(1)
    @game.hit_boxes << HitBox.find(2)
    @game.hit_boxes << HitBox.find(3)
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
    @hit_box = @game.hit_boxes.where(image_id: params[:image_id], id: params[:hit_box_id]).first
    puts @hit_box.attributes
    total_hit_boxes = @game.game_hit_boxes.count
    data = {
      hit: false,
      total_hit_boxes: total_hit_boxes,
      total_cleared: @game.game_hit_boxes.where(cleared: true).count
    }
    if params[:x] > @hit_box.x_start && params[:x] < @hit_box.x_end && params[:y] > @hit_box.y_start && params[:y] < @hit_box.y_end
      puts "hit"
      @game.game_hit_boxes.where(hit_box_id: @hit_box.id).first.update(cleared: true)
      data[:hit] = true
      data[:coordinates] = {x_start: @hit_box.x_start, x_end: @hit_box.x_end, y_start: @hit_box.y_start, y_end: @hit_box.y_end}
      data[:total_cleared] = @game.game_hit_boxes.where(cleared: true).count
      if data[:total_cleared] == total_hit_boxes
        @game.update(cleared_at: Time.now)
        data[:how_long_to_beat] = @game.cleared_at - @game.created_at
      end
    else
      puts "miss"
    end
    puts @game.game_hit_boxes.where(hit_box_id: @hit_box.id).first.attributes

    render json: data
  end
end
