Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: :front do 
    root 'static_pages#index'

    get 'team', to: 'static_pages#team'
    get 'important', to: 'static_pages#important'
    get 'services', to: 'static_pages#services'
    get 'examples', to: 'static_pages#examples'
    get 'contact', to: 'static_pages#contact'
    resources :posts
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
      resources :postcategories
    end

    resources :services
    resources :masters
    resources :static_pages
    resources :posts

  end
end
