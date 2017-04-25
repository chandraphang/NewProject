Rails.application.routes.draw do
  resources :comments
  get 'sessions/new'

  resources :users
  resources :sessions
  resources :blogs, :path => 'blog_posts'

  get '/about',to: 'blogs#about'
  get '/blog_list',to: 'blogs#blog_list'
  get '/search',to: 'blogs#search'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/login',  to: 'sessions#destroy'
  root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
