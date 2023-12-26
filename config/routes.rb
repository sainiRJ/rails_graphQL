Rails.application.routes.draw do
  # get 'user/new', to: 'user#new'
  get 'user/create'
  get 'user/login', to: 'users#login'
 post 'user/login', to: 'users#post_login'

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :users
   root "users#index"
end
