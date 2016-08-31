class GamesController < ApplicationController
  def name
    @name = params[:name].upcase
  end

  def first
    @name = params[:name]
    letter = @name.split('')
    @first_letter = letter[0]
  end

  def number
    @correct_number = 17
    @user_number = params[:number].to_i
  end
end
