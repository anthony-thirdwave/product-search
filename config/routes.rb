Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  resources :products
  resources :companies
  get 'search', to: 'search#search'
  resources :products do
    collection do
      get :autocomplete
    end
  end
end
