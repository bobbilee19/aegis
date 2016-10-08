Rails.application.routes.draw do
  # root 'dashboard#home'
  root 'venues#index'
  resources :venues do
    collection { post :import }
  end
end
