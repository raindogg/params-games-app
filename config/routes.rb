Rails.application.routes.draw do
  get '/name_game' => 'games#name'
  get '/first_letter' => 'games#first'
  get '/number_guesser' => 'games#number'
  get '/button_presser' => 'games#button'
  get '/url_number_guesser/:guess' => 'games#url_number'
  get '/form_game' => 'games#form_number'
  get '/form_result' => 'games#form_number_result'
end
