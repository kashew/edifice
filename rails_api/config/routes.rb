Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :callbacks, only: [:index]
  resources :agents, only: [:create, :index]
end
