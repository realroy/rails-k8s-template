Rails.application.routes.draw do
  resource :home, only: :index

  root "home#index"
end
