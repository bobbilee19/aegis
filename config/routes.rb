Rails.application.routes.draw do
  root 'venues#index'
  resources :venues do
    collection { post :import }
  end
end
