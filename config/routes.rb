Rails.application.routes.draw do
  resources :corsairs
  get '/new', to: 'corsairs#new'

  get '/index', to: 'corsairs#index'

  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
