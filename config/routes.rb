Rails.application.routes.draw do
  get 'welcome/home', to: 'welcome#home'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  root 'welcome#home'
end
