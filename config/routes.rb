Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks
  resources :tasks do
    collection do
      post :confirm
    end
  end
end
