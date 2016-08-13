# == Route Map
#
#    Prefix Verb   URI Pattern               Controller#Action
#     blogs GET    /blogs(.:format)          blogs#index
#           POST   /blogs(.:format)          blogs#create
#  new_blog GET    /blogs/new(.:format)      blogs#new
# edit_blog GET    /blogs/:id/edit(.:format) blogs#edit
#      blog GET    /blogs/:id(.:format)      blogs#show
#           PATCH  /blogs/:id(.:format)      blogs#update
#           PUT    /blogs/:id(.:format)      blogs#update
#           DELETE /blogs/:id(.:format)      blogs#destroy
#      root GET    /                         welcome#index
#

Rails.application.routes.draw do
  root 'welcome#index'
  resources :blogs
end
