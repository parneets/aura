Rails.application.routes.draw do
  
  get 'welcome/index'
  get  '/signup',  to: 'users#new'

  resources :posts do
    resources :comments
  end
  resources :users
  root 'welcome#index'
end
