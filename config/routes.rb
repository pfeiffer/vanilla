Rails.application.routes.draw do
  resources :messages, only: [:index, :create] do
    get :dump_env, on: :collection
  end

  mount Resque::Server.new, :at => "/resque"
end
