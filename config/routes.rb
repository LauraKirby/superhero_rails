Rails.application.routes.draw do
  root 'users#index'
  get '/login', to: 'users#login', as: 'login' #login and link to signup
  post '/login', to: 'users#attempt_login'
  get '/signup', to: 'users#signup', as: 'signup'
  post '/signup', to: 'users#create'
  get '/login/:id', to: 'users#show', as: 'show'
  delete '/logout', to: 'users#logout', as: 'logout'

  




  
end

# Prefix Verb   URI Pattern          Controller#Action
#   root GET    /                    users#index
#  login GET    /login(.:format)     users#login
#        POST   /login(.:format)     users#attempt_login
# signup GET    /signup(.:format)    users#signup
#        POST   /signup(.:format)    users#create
#   show GET    /login/:id(.:format) users#show
# logout DELETE /logout(.:format)    users#logout