Rails.application.routes.draw do




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: :front do 
    root 'static_pages#index'
  end

  namespace :admin do
  	get '', to: 'dashboard#index', as: "/"

    namespace :settings do
      get '', to: 'dashboard#index', as: "/"
      
      resources :categories do
        member do
          get :get_subcategories, defaults: { format: "js" }
        end
      end
      resources :subcategories
      resources :generals
    end

    resources :services
    resources :masters


  end
end
