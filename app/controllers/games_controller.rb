class GamesController < ApplicationController
  def name
    @name = params[:name].upcase
  end

  def first
    @name = params[:name]
    letter = @name.split('')
    @first_letter = letter[0]
  end
end
