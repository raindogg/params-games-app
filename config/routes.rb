Rails.application.routes.draw do
  get '/name_game' => 'games#name'
  get '/first_letter' => 'games#first'
end
