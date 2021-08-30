Rails.application.routes.draw do
  devise_for :users
  root to:"homes#index"
  resources :products do
    collection do
      get 'snack'
      get 'chocolate'
      get 'candy'
      get 'jello'
      get 'pan'
      get 'delicacy'
    end
  end
  resources :memories 
end
