Rails.application.routes.draw do
  resources :exhibits
  devise_for :users
  get 'static_pages/home'
  get 'static_pages/map'
  get 'static_pages/contact'
  get 'static_pages/collections'
  root 'static_pages#home'
end
