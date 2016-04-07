Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :volunteers, controllers: { omniauth_callbacks: 'volunteers/omniauth_callbacks' }

  resources :missions do
    resources :candidacies, except: [:update]
    put 'candidacies/:id', to: 'candidacies#confirm'
  end

  put 'mission/:id/start', to: 'missions#start', as: 'mission_start'
  put 'mission/:id/accomplish', to: 'missions#accomplish', as: 'mission_accomplish'
  put 'mission/:id/interrupt', to: 'missions#interrupt', as: 'mission_interrupt'

  get 'pages/dashboard', as: 'dashboard'
  get 'pages/how_it_works', as: 'how_it_works'
  get 'pages/contact', as: 'contact'
  get 'pages/community_and_impact', as: 'community_and_impact'
  get 'pages/home_volunteers', as: 'home_volunteers'
  get 'pages/home_nonprofits', as: 'home_nonprofits'
  get 'pages/missions_toolkit', as: 'missions_toolkit'
  get 'pages/terms_and_conditions', as: 'terms_and_conditions'

  root to: 'pages#home_volunteers'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
