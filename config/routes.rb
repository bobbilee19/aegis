Rails.application.routes.draw do
  root 'dashboard#home'

  resources :venues do
    collection { post :import }
  end

  resources :sponsors, :assignees do
    resources :tasks
  end

  resources :contacts do
    resources :deliverables
  end

  resources :sponsors, :users do
    resources :events
  end
end
