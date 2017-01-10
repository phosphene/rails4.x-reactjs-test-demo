Rails.application.routes.draw do

  get 'hello_world', to: 'hello_world#index'
  #this is a singleton w/o index
  #i.e. there is only one profile per user
  #no new either, as profile assumed and tacit
  resource :profile, :except => [:new, :create]
  resources :categories
  ##get '/categories/new/(:parent_id)', to: 'categories#new', as: :new_category

  resources :artifacts

  namespace :admin do
    DashboardManifest::DASHBOARDS.each do |dashboard_resource|
      resources dashboard_resource
    end
    root controller: DashboardManifest::ROOT_DASHBOARD, action: :index
  end
  get 'dashboard' => 'dashboards#show', :as => 'user_root'
  root to: 'visitors#index'
  devise_for :users
  resources :users

end
