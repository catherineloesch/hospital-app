Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "patients", to: "patients#index"
  get "patients/:id", to: "patients#show", as: :patient 


  # Defines the root path route ("/")
  root "patients#index"
end
