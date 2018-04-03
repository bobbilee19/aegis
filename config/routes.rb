Rails.application.routes.draw do
  root 'dashboard#home'

  resources :events do
    resources :venues do
      collection { post :import }
      resources :updates
    end
    resources :sponsors
  end

end
