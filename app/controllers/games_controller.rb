class GamesController < ApplicationController
  def name
    @name = params[:name]
    if @name != nil
      @message = 'NAME GAME LOVES ' + @name.upcase + '!'
    else
      @message = 'NAME GAME DOES NOT LOVE YOU.' 
    end
  end

  def first
    @name = params[:name]
    if @name != nil
      @first_letter = @name.first
      if @first_letter.downcase == 'a'
        @message = 'Hey, your name starts with the first name of the alphabet!'
      else
        @message = 'Why hello there ' + @name 
      end
    else 
      @message = 'Hi there! If you put your name up there as a parameter I will give you a message.'
    end
  end

  def number
    @correct_number = 17
    @user_number = params[:number].to_i
    if @user_number.zero? 
      @message = 'I want to play a game. Pass a number as a params.'
    elsif @user_number < 1 || @user_number > 100 
      @message = 'FORBIDDEN.'
    elsif @user_number > @correct_number
      @message = 'Your guess is too high.'
    elsif @user_number < @correct_number
      @message = 'Your guess is too low.'
    elsif @user_number == @correct_number
      @message = 'You win!'
    end
  end
end

