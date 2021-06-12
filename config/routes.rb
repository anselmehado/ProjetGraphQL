Rails.application.routes.draw do
  #post "/graphql", to: "graphql#execute"
  post '/graphql', to: 'graphql#execute'

if Rails.env.development?
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'

  root to: redirect('/graphiql')
end
 resources :posts
end
