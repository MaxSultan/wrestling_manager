Rails.application.routes.draw do
  resources :events do
    resources :event_items, except: [:index, :show]
  end 
  resources :teams
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
