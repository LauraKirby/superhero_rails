Rails.application.routes.draw do

  get 'teams/new'

  get 'teams/show'

  root 'users#index'
  get '/login', to: 'sessions#login', as: 'login' #login and link to signup
  post '/login', to: 'sessions#attempt_login'
  get '/login/:id', to: 'users#show', as: 'show'
  delete '/logout', to: 'sessions#logout', as: 'logout'

  get '/signup', to: 'users#signup', as: 'signup'
  post '/signup', to: 'users#create'


  resources :users do 
  	resources :teams, shallow: true
  end 

  resources :superheros


  




  
end

#  root GET    /                         users#index
#   root GET    /                    users#index
#  login GET    /login(.:format)     sessions#login
#        POST   /login(.:format)     sessions#attempt_login
#   show GET    /login/:id(.:format) sessions#show
# logout DELETE /logout(.:format)    sessions#logout
# signup GET    /signup(.:format)    users#signup
#        POST   /signup(.:format)    users#create

# Prefix Verb   URI Pattern                         Controller#Action
#           root GET    /                                   users#index
#          users GET    /users(.:format)                    users#index
#          login GET    /login(.:format)                    sessions#login
#                POST   /login(.:format)                    sessions#attempt_login
#           show GET    /login/:id(.:format)                sessions#show
#         logout DELETE /logout(.:format)                   sessions#logout
#         signup GET    /signup(.:format)                   users#signup
#                POST   /signup(.:format)                   users#create
#     user_teams GET    /users/:user_id/teams(.:format)     teams#index
#                POST   /users/:user_id/teams(.:format)     teams#create
#  new_user_team GET    /users/:user_id/teams/new(.:format) teams#new
#      edit_team GET    /teams/:id/edit(.:format)           teams#edit
#           team GET    /teams/:id(.:format)                teams#show
#                PATCH  /teams/:id(.:format)                teams#update
#                PUT    /teams/:id(.:format)                teams#update
#                DELETE /teams/:id(.:format)                teams#destroy
#                GET    /users(.:format)                    users#index
#                POST   /users(.:format)                    users#create
#       new_user GET    /users/new(.:format)                users#new
#      edit_user GET    /users/:id/edit(.:format)           users#edit
#           user GET    /users/:id(.:format)                users#show
#                PATCH  /users/:id(.:format)                users#update
#                PUT    /users/:id(.:format)                users#update
#                DELETE /users/:id(.:format)                users#destroy
#     superheros GET    /superheros(.:format)               superheros#index
#                POST   /superheros(.:format)               superheros#create
#  new_superhero GET    /superheros/new(.:format)           superheros#new
# edit_superhero GET    /superheros/:id/edit(.:format)      superheros#edit
#      superhero GET    /superheros/:id(.:format)           superheros#show
#                PATCH  /superheros/:id(.:format)           superheros#update
#                PUT    /superheros/:id(.:format)           superheros#update
#                DELETE /superheros/:id(.:format)           superheros#destroy