# == Route Map
#
# Prefix Verb URI Pattern Controller#Action
#   root GET  /           welcome#index
#

Rails.application.routes.draw do
  root 'welcome#index'
end
