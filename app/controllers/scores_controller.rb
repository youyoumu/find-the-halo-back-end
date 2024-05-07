class ScoresController < ApplicationController
  def index
    @scores = Score.all.order(how_long_to_beat: :asc)
    render json: @scores
  end

  def create
    @game = Game.find params[:game_id]
    if @game.cleared_at.nil?
      render json: {
        error: "game not cleared yet"
      }
    end
    @score = Score.new(player_name: params[:player_name], how_long_to_beat: @game.cleared_at - @game.created_at)
    @score.save
  end
end
