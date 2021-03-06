Rails.application.routes.draw do
  devise_for :users
  resources :user_stocks,except:[:show,:edit,:update]
  root 'pages#home'
  get 'portfolio',to:'users#portfolio'
  get 'search_stocks',to: 'stocks#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
