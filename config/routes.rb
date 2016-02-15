Rails.application.routes.draw do
  resources :categories
  resources :artifacts
  resources :artifacts
  resources :artifacts
  resources :artifacts
  namespace :admin do
    DashboardManifest::DASHBOARDS.each do |dashboard_resource|
      resources dashboard_resource
    end
    root controller: DashboardManifest::ROOT_DASHBOARD, action: :index
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
  get 'dummy/' => 'dummy#index'
end
