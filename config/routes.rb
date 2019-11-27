Rails.application.routes.draw do
  resources :cards
  resources :board_columns
  resources :applicants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
