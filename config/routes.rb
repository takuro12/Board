Rails.application.routes.draw do
 
  
  resources :user do
    
      member do
      get 'mypage'
     end
    end
    
  resources :books
  root to: 'world#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
