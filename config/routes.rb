Rails.application.routes.draw do
  resources :users, :technologies
  get '/', to: 'staticpages#landing'
  get '/signup', to: 'staticpages#signup_form'
end
