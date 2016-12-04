Rails.application.routes.draw do
  root 'dashboard#home'

  # should really be nesting these inside events
  resources :venues do
    collection { post :import }
  end

  resources :events do
    resources :sponsors
  end
end
