Rails.application.routes.draw do
  root 'boards#index'

  resources :boards do
    resources :stuffs
  end

  resources :stuffs do
    resources :tasks
  end
end