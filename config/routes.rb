Rails.application.routes.draw do

  # scope :admin, module:'admin' do
  #   resources :evaluations
  # end
  resources :evaluations
  
  get "user/:id", to: "users#number",  constraints: { id: /\d+/ }
  get "user/:id", to: "users#text",  constraints: { id: /\w+/ }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
