Rails.application.routes.draw do
  resources :users, :technologies
  get '/', to: 'staticpages#landing'
  get '/signup', to: 'users#new'
  get '/signup2', to: 'users#signup2'
  post '/users', to: 'users#create'
  
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy'
end
