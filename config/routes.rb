Rails.application.routes.draw do
  get 'admins/new'
  post 'admins/create', to: 'admins#create', as: 'admin'
  get 'sessions/new'
  root    'static_pages#home'
  get     '/signup',  to: 'users#new', as: 'signup'
  post    '/signup',  to: 'users#create'
  get     '/edit',    to: 'users#edit'
  get     '/show',    to: 'users#show'
  get     '/signin',  to: 'sessions#new', as: 'signin'
  post    '/signin',  to: 'sessions#create', as: 'login'
  delete  '/signout', to: 'sessions#destroy'
end
