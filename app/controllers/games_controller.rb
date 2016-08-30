class GamesController < ApplicationController
  def name
    @name = params[:name].upcase
  end
end
