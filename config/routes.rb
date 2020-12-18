Rails.application.routes.draw do
  root to: "ingredients#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :ingredients, only: [:show, :new, :create]
end
