Rails.application.routes.draw do
  resource :registrations, only: [:new, :create]
  
  resource :sessions, only: [:new, :create, :destroy]
  root to: 'registrations#new'
	resource :registrations, only: [:new, :create]
	resource :sessions, only: [:new, :create, :destroy]
	resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
