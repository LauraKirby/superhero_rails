Rails.application.routes.draw do

  root 'users#index'
  get '/users', to: 'users#index'
  get '/login', to: 'sessions#login', as: 'login' #login and link to signup
  post '/login', to: 'sessions#attempt_login'
  get '/login/:id', to: 'sessions#show', as: 'show'
  delete '/logout', to: 'sessions#logout', as: 'logout'

  get '/signup', to: 'users#signup', as: 'signup'
  post '/signup', to: 'users#create'




  




  
end

#  root GET    /                         users#index
#   root GET    /                    users#index
#  login GET    /login(.:format)     sessions#login
#        POST   /login(.:format)     sessions#attempt_login
#   show GET    /login/:id(.:format) sessions#show
# logout DELETE /logout(.:format)    sessions#logout
# signup GET    /signup(.:format)    users#signup
#        POST   /signup(.:format)    users#create