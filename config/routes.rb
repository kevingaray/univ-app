Rails.application.routes.draw do
  root 'courses#index'
  get 'courses/new', to: 'courses#new'
  get 'about', to: 'pages#about'
  resources :students
  # login
  get 'login', to: 'logins#new'
  post 'login', to: 'logins#create'
  delete 'login', to: 'logins#destroy'

end
