Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :restaurants, only: %i[index show new create]
    resources :reviews, only: %i[create]
  end
end
