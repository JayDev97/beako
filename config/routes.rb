Rails.application.routes.draw do
  resources :budget_items
  devise_for :users
  resources :budgets
   
  root 'static_page#summary'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "static_page/summary", :as => 'summary'
  
  resources :budgets do
    resources :budget_items
  end
  
end
