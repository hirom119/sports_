Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :posts do
    resources :comments , only:[:create]
    end
  resources :users ,only:[:show,:edit]
end
