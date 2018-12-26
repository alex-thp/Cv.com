Rails.application.routes.draw do
  devise_for :users

  root "index#home"

  get '/create_cv', to: "index#cv"
  get '/mon_profil', to: "index#profil"
  post '/cv', to: "index#show"
end