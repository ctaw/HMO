Rails.application.routes.draw do
  devise_for :user, :path => '', :path_names => {:sign_in => 'login', :sign_up => 'register'}
  root :to => "admin/dashboard#index"
  resource :sessions, only: [:new, :create, :destroy]
  delete 'logout' => 'sessions#destroy'

  namespace :admin do
    resources :dashboard
  end
  
end
