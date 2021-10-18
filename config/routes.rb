Rails.application.routes.draw do
  resources :user_stocks, only: [:create]
  root 'welcome#index'
  devise_for :users
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
end
