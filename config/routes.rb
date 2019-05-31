Rails.application.routes.draw do
  namespace :api do
    get '/stats' => 'stats#index'
  end
end
