Rails.application.routes.draw do
  resources :articles
  resources :blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    mount RailsPgExtras::Web::Engine, at: 'pg_extras'
  # Defines the root path route ("/")
  root "blogs#index"
end
