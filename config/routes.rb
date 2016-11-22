Rails.application.routes.draw do
  
  root 'visitors#index'

  devise_for :users

  resources :students do
    get :subjects
  end

  resources :teachers do
    get :subjects
  end

  get '/reports/subjects', to: 'reports#subjects', as: 'report_subjects'
  get '/reports/tuitions', to: 'reports#tuitions', as: 'report_tuitions'
end
