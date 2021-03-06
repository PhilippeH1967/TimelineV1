Rails.application.routes.draw do
  namespace :admin do
      resources :users
      root to: "users#index"
    end
  root to: 'visitors#index'
  devise_for :users, :controllers => { registrations: 'registrations' },
             :path=>'',
             :path_names=>{:sign_in=>'login', :sign_out=>'logout', :edit=>'Profile'}
  resources :users
end
