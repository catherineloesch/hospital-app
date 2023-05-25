Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "patients", to: "patients#index"
  get "patients/new", to: "patients#new", as: :new_patient
  get "patients/:id", to: "patients#show", as: :patient 
  post "patients", to: "patients#create"
  get "patients/:id/edit", to: "patients#edit", as: :edit_patient
  patch "patients/:id", to: "patients#update"
  delete "patients/:id", to: "patients#destroy"

  # Defines the root path route ("/")
  root "patients#index"
end
