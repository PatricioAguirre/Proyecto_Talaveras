Rails.application.routes.draw do

  get 'guardados/new'

  get 'guardados/indexBodega'

  get 'ofertas/index'

  get 'compras/index'

  get 'provedores/index'

  devise_for :users
  get 'home/index'

  get 'validations/login'

  get 'validation/login'

  get 'ingresos/login'

  get 'login/login'

  get 'compras/compras2'

  resources :account

  root :to => 'home#index'
  post ':controller(/:action(/:id(.:format)))'
  get ':controller(/:action(/:id(.:format)))'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
