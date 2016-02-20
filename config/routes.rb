Rails.application.routes.draw do

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
