Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'entries#index'
  get '/home', to: 'pages#home'

  resources :entries
end
