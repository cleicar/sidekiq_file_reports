require 'sidekiq/web'

Rails.application.routes.draw do
  resources :file_reports, only: [:index, :create]
  mount Sidekiq::Web => '/sidekiq'
end
