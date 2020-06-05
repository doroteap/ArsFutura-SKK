Rails.application.routes.draw do
  devise_for :user
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :operators do
    resources :trips
  end
  resources :trips
  resources :users do
    resources :tickets
  end
  root 'welcome#index'
end
