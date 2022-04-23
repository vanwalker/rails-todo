Rails.application.routes.draw do

  devise_for :users do
    resources :todos, only: [:my_todos]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :todos
end
