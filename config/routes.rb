Rails.application.routes.draw do
  
  namespace :admin do
    resources :events, only: [:new, :index, :edit]
    resources :contributions, only: [:index, :show]
  end
  
  namespace :user do
    resources :contributions, only: [:new, :index, :show, :edit]
  end
  
  resources :events, only: [:index, :show] 
  
  devise_for :users, skip: [:passwords],controllers:{
    registrations: "user/registrations",
    sessions: 'user/sessions'
  }
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
  }
  
  root 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
