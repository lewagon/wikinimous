Rails.application.routes.draw do
  resources :totos

  resources :articles

  root to: 'articles#index'
end
