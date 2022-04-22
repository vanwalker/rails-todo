Rails.application.routes.draw do
  get 'todos/index'
  get 'todos/show'
  get 'todos/update'
  get 'todos/destroy'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :todos

end
