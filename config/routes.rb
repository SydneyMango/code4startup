Rails.application.routes.draw do

  root 'pages#home'
  devise_for :users,
             path: '',
             path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
             controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}

  resources :users, only: [:show]
  resources :resorts, except: [:edit] do
    member do
      get 'listing'
      get 'description'
      get 'photo_upload'
      get 'features'
      get 'location'
    end
  end
end

