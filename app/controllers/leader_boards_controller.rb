class LeaderBoardsController < ApplicationController
  def index
  	@players = Player.includes(:scores)
                .group('players.id')
                .having("count(scores.id)>=10")
                .order("scores.value desc").limit(10)
  end
end