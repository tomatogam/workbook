Rails.application.routes.draw do
  get 'sessions/new'
  root    'static_pages#home'
  get     '/signup',  to: 'users#new'
  post    '/signup',  to: 'users#create'
  get     '/edit',    to: 'users#edit'
  get     '/show',    to: 'users#show'
  get     '/signin',  to: 'sessions#new'
  post    '/signin',  to: 'sessions#create'
  delete  '/signout', to: 'sessions#destroy'
end
