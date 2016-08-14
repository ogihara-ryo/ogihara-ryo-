# == Route Map
#
#    Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         welcome#index
#   profile GET    /profile(.:format)        welcome#profile
#      tech GET    /tech(.:format)           welcome#tech
#   sign_in GET    /sign_in(.:format)        sessions#new
#           POST   /sign_in(.:format)        sessions#create
#  sign_out DELETE /sign_out(.:format)       sessions#destroy
#     blogs GET    /blogs(.:format)          blogs#index
#           POST   /blogs(.:format)          blogs#create
#  new_blog GET    /blogs/new(.:format)      blogs#new
# edit_blog GET    /blogs/:id/edit(.:format) blogs#edit
#      blog GET    /blogs/:id(.:format)      blogs#show
#           PATCH  /blogs/:id(.:format)      blogs#update
#           PUT    /blogs/:id(.:format)      blogs#update
#           DELETE /blogs/:id(.:format)      blogs#destroy
#

Rails.application.routes.draw do
  root 'welcome#index'
  get 'profile', to: 'welcome#profile'
  get 'tech', to: 'welcome#tech'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'sign_out', to: 'sessions#destroy'
  resources :blogs
end
