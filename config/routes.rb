Rails.application.routes.draw do
  root 'static_pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'users/sign_up' => 'users#index'
  post 'users/sign_up' => 'users#create'
end
