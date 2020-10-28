Rails.application.routes.draw do
  root 'books#top'
  devise_for :users
  get 'about' => 'books#about'
  resources :books
  resources :users, only: [:index, :edit, :update, :show]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
