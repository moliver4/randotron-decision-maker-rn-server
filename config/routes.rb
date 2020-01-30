Rails.application.routes.draw do
  resources :choices
  resources :questions
  resources :users
  resources :decisions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
