Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:index, :new, :create]
  end
  resources :doses, only: [:destroy]
  resources :reviews, only: [ :show, :edit, :update]
end
