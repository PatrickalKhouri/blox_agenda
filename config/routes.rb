Rails.application.routes.draw do
  devise_for :users
  root to: 'meetings#index'

  resources :rooms, only: %i[index new create destroy]
  resources :meetings, only: %i[index show new create destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
