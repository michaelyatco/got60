Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "competitors#index"

#competitors routes
  get "/competitors", to: "competitors#index"
  get "/signup", to: "competitors#new"
  post "/competitors", to: "competitors#create"
  get "/competitors/:id", to: "competitors#show"
  get "/competitors/:id/edit", to: "competitors#edit"
  patch "/competitors/:id", to: "competitors#update"
  delete "/competitors/:id", to: "competitors#destroy"

end
