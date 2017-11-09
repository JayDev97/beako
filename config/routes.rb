Rails.application.routes.draw do
  devise_for :users
  resources :budgets
   
  root 'static_page#summary'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "static_page/summary", :as => 'summary'
  
end
