Rails.application.routes.draw do
  resources :exhibits
  devise_for :users
  get 'home' => "static_pages#home", as: 'home'
  get 'mapa' => "static_pages#map", as: 'map'
  get 'kontakt' => "static_pages#contact", as: 'contact'
  get 'kolekcje' => "static_pages#collections", as: 'collections'
  get 'static_pages/tour'
  root 'static_pages#home'
end
