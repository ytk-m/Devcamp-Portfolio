Rails.application.routes.draw do
  devise_for :users
  resources :portfolios, except:[:show]
  get "angular-items", to: "portfolios#angular"
  get "portfolio/:id", to:"portfolios#show",as: "portfolio_show"

  root to: "pages#home"  
  get "about", to: "pages#about"
  get "contact", to: 'pages#contact'
  
  resources :blogs do
    member do
      get :toggle_status
    end

  
    
  end
  

end
