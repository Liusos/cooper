Rails.application.routes.draw do





  root 'static_pages#home'

  get     '/home',            to: 'static_pages#home'
  get     '/instrucciones',   to: 'static_pages#instrucciones'
  get     '/resultados',      to: 'static_pages#resultados'
  get     '/contacto',        to: 'static_pages#contacto'
  get     '/signup',          to: 'users#new'
  get     '/login',           to: 'sessions#new'
  post    '/login',           to: 'sessions#create'
  delete  '/logout',          to: 'sessions#destroy'

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
