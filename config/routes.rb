Rails.application.routes.draw do
  get 'run_summary/index'
  get 'welcome/index'
  resources :full_runs
  resources :run_summary
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
