Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "works#index"
  #will replace with homepages#index when complete

  resources :works
  post '/works/:id/upvote', to: "works#upvote", as: "upvote"
  # do
  #   resources :users, shallow: true
  #   resources :works, shallow:true
  # end

  resources :users

  get "/login", to: "users#login_form", as: "login"
  post "/login", to: "users#login"
  post "/logout", to: "users#logout", as: "logout"
  get "/users/current", to: "users#current", as: "current_user"
end
