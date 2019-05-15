Rails.application.routes.draw do
  resources :post
  
  get 'about' => 'welcome#about'
  
  root 'welcome#index'
end
