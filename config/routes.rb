Rails.application.routes.draw do

  root 'students#index'
  
  devise_for :users

  resources :students do
    get :subjects
  end
  resources :teachers

  resources :report_subjects
end
