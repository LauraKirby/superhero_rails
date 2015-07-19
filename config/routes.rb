Rails.application.routes.draw do
  root 'user#index'
  get 'login', to: 'user#index' #login and link to signup
  get 'signup', to: 'user#signup', as: 'new_user'
  get 'user/:id', to: 'user#show'
  




  
end

# refix Verb URI Pattern         Controller#Action
#  session_login GET  /session/login(.:format)  session#login
# session_signup GET  /session/signup(.:format) session#signup
#   session_home GET  /session/home(.:format)   session#home
#           root GET  /                         user#index
#           user GET  /user(.:format)           user#index
#       user_new GET  /user/new(.:format)       user#signup
#                GET  /user/:id(.:format)       user#show