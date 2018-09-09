Rails.application.routes.draw do
  require 'sidekiq/web'

  get 'file/new'
  post 'file/write'
  #mount Sidekiq::Web, at: '/sidekiq'
end
