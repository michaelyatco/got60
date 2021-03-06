Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#index"

  mount ActionCable.server => "/cable"

  get '/', to: 'games#show'
  namespace :api do
    namespace :v1 do
      get "/trivia", to: "trivia#index"
      patch "/games/:id", to: "games#update"
      get "/messages", to: "messages#index"
      post "/messages", to: "messages#create"
      get '/sessions', to: 'sessions#index'
      post '/sessions', to: 'sessions#create'
    end
  end

#pages routes
  get "/index", to: "pages#index"

#competitors routes
  get "/competitors", to: "competitors#index"
  get "/signup", to: "competitors#new"
  post "/competitors", to: "competitors#create"
  delete "/competitors/:id", to: "competitors#destroy"

#profiles routes
  get "/profiles", to: "profiles#index"
  get "/profiles/new", to: "profiles#new"
  post "/profiles", to: "profiles#create"
  get "/profiles/:id", to: "profiles#show", as: "profile"
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

#games routes
  get "/games", to: "games#index"
  get "/games/new", to: "games#new"
  post "/games", to: "games#create"
  get "/games/:id", to: "games#show"

#trivia routes
  get "/trivias", to: "trivias#index"
  get "/trivias", to: "trivias#new"
  post "/trivias", to: "trivias#create"
  get "/trivias/:id", to: "trivias#show"

#wager routes
  get "/wagers", to: "wagers#index"
  get "/wagers/:id/edit", to: "wagers#edit"
  patch "/wagers/:id", to: "wagers#update"
  get "/wagers/:id", to: "wagers#show"
  post "/wagers/:id/upvote", to: "wagers#upvote", as: "upvote"
  post "/wagers/:id/downvote", to: "wagers#downvote", as: "downvote"

#friendship routes
  resources :friendships  
  
end
