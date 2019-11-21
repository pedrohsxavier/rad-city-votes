Rails.application.routes.draw do
  resources :votes, only: [:index, :create, :new, :show]
  resources :voters
  resources :cities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
