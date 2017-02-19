Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "competitors#index"

#competitors routes

  get "/signup", to: "competitors#new"
  post "/competitors", to: "competitors#create"
  delete "/competitors", to: "competitors#destroy"

#profiles routes


end
