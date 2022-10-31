Rails.application.routes.draw do
  
  namespace :admin do
    get 'contributions/index'
    get 'contributions/show'
  end
  namespace :user do
    get 'contributions/new'
    get 'contributions/index'
    get 'contributions/show'
    get 'contributions/edit'
  end
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
