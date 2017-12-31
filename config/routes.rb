Rails.application.routes.draw do
	
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts, :profile
  root 'posts#index'
  get 'profile', to: 'profile#index'

  match 'active'  => 'sessions#active',  via: :get
  match 'timeout' => 'sessions#timeout', via: :get
end
