Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  resources :courses

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :static_pages, only: [:home]


 root 'static_pages#home'
end
