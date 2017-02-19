Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "competitors#index"

#competitors routes

  get "/signup", to: "competitors#new"
  post "/competitors", to: "competitors#create"
  delete "/competitors", to: "competitors#destroy"

#profiles routes

  get "/profiles", to: "profiles#index"
  get "/profiles/new", to: "profiles#new"
  post "/profiles", to: "profiles#create"
  get "/profiles/:id", to: "profiles#show"
  get "/profiles/:id/edit", to: "profiles#edit"
  patch "/profiles/:id", to: "profiles#update"
  delete "/profiles/:id", to: "profiles#destroy"

#images routes
  get "/profiles/:profile_id/images/new", to: "images#new"
  post "/profiles/:profile_id/images", to: "images#create"

#sessions routes
  get "/login", to: "sessions#new"
  post "login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  
end
