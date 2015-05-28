Rails.application.routes.draw do
  resources :messages, only: [:index, :create]
  mount Resque::Server.new, :at => "/resque"
end
