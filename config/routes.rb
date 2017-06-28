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
  get     '/stats',           to: 'stats#create'  #personalizada

  resources :users

  resources :stats, only: [:create, :show] do
    resources :stat_steps, only: [:edit, :update]
  end

  #lo de arriba permite=>  stats/:stat_id/stat_parts/:id/edit

  resources :stats

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
