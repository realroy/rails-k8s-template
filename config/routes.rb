Rails.application.routes.draw do
  resource :home, only: :show, path: '/', controller: 'home'

  root "home#show"
end
