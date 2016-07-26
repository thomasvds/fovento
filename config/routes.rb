Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :volunteers, controllers: { registrations: 'volunteers/registrations', omniauth_callbacks: 'volunteers/omniauth_callbacks' }

  resources :nonprofit_profiles

  resources :volunteers, only: [:update]

  resources :missions do
    resources :candidacies, except: [:create]
    put 'candidacies/:id/transfer', to: 'candidacies#transfer', as: 'candidacy_transfer'
    put 'candidacies/:id/confirm', to: 'candidacies#confirm', as: 'candidacy_confirm'
  end

  put 'mission/:id/publish', to: 'missions#publish', as: 'mission_publish'

  get 'mission/:id/begin', to: 'missions#begin', as: 'mission_begin'
  get 'mission/:id/finish', to: 'missions#finish', as: 'mission_finish'
  get 'mission/:id/stop', to: 'missions#stop', as: 'mission_stop'

  put 'mission/:id/start', to: 'missions#start', as: 'mission_start'
  put 'mission/:id/accomplish', to: 'missions#accomplish', as: 'mission_accomplish'
  put 'mission/:id/interrupt', to: 'missions#interrupt', as: 'mission_interrupt'

  # ALL STATIC PAGES
  get 'pages/dashboard', as: 'dashboard'
  get 'pages/values', as: 'values'
  get 'pages/how_it_works', as: 'how_it_works'
  get 'pages/community_and_impact', as: 'community_and_impact'
  get 'pages/home_volunteers', as: 'home_volunteers'
  get 'pages/home_nonprofits', as: 'home_nonprofits'
  get 'pages/missions_toolkit', as: 'missions_toolkit'
  get 'pages/terms_and_conditions', as: 'terms_and_conditions'
  get 'pages/ambassadors', as: 'ambassadors'
  get 'pages/team', as: 'team'

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  root to: 'pages#home_volunteers'
end
