Rails.application.routes.draw do

  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/instrucciones'

  get 'static_pages/resultados'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
