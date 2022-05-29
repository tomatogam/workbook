Rails.application.routes.draw do
  get     'admins/new'
  post    'admins/create', to: 'admins#create', as: 'admin'

  get     'sessions/new'
  root    'static_pages#home'

  get     '/search',  to: 'searches#search', as: 'search'
  get     '/result',  to: 'searches#result', as: 'result'
  
  get     '/signup',  to: 'users#new', as: 'signup'
  post    '/signup',  to: 'users#create'
  get     '/user_edit',    to: 'users#edit', as: 'user_edit'
  get     '/show',    to: 'users#show', as: 'user_show'
  
  get     '/signin',  to: 'sessions#new', as: 'signin'
  post    '/login',  to: 'sessions#create', as: 'login'
  delete  '/signout', to: 'sessions#destroy'
  
  get     '/upload',  to: 'posts#new', as: 'post_new'
  post    '/postcreate',  to: 'posts#create', as: 'post_create'
  get     '/show',  to: 'posts#show', as: 'post_show'
  get     '/upload1', to: 'post_chapters#new', as: 'chapter_new'
  post    '/chaptercreate', to: 'post_chapters#create', as: 'chapter_create'
  get     '/post_edit', to: 'posts#edit', as: 'post_edit'
  get     'post_chapters/destroy'

  resources :users do
    member do
      get :following, :followers
    end
  end  

  resources :posts do
    resource :likes, only: [:create, :destroy]
    resource :dislikes, only: [:create, :destroy]
  end

  resources :posts do  #postsコントローラへのルーティング  
    resources :comments, only: [:create]  #commentsコントローラへのルーティング
  end

  resources :relationships,       only: [:create, :destroy]
end
