Rails.application.routes.draw do
  root 'pages#home'
  resources :todos
  get 'change', to: 'todos#change'
  #put 'change', to: 'todos#update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
