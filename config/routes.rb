Rails.application.routes.draw do
  root 'dashboard#home'
  resources :venues do
    collection { post :import }
  end
end
