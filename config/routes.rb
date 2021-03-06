Rails.application.routes.draw do
  get 'card/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'top#index'
  resources :list, only: %i(new create edit update destroy) do
    resources :card, only: %i(new create show edit update destroy)
  end
end
