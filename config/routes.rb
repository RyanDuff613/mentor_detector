Rails.application.routes.draw do
  resources :users, :technologies
  get '/', to: 'landings#landing'
end
