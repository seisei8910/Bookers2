Rails.application.routes.draw do
  root to: 'homes#top'
  get 'homes/about', to: 'homes#about', as: :about
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:index, :show, :edit, :create, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
