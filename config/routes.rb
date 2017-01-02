Rails.application.routes.draw do



  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :companies do
    resources :activities
  end
  
  root to: "home#index"

  get 'page/about'
  get 'page/contact'

end
