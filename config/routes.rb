Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  #root "posts#index"
  resources :posts
end
