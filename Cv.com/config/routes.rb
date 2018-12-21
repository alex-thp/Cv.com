Rails.application.routes.draw do
  devise_for :users

  root "index#home"

  get '/create_cv', to: "index#cv"
  post '/cv', to: "index#show"
end