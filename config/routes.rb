Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :subjects 
  resources :students 
  resources :tutors
  resources :appointments 
  resources :reviews 
  resources :student_inboxes 
  resources :student_subjects 

 
  get "/login", to: "students#login", as: "login"

  post "send_the_form_here", to: "students#handle_login"
  delete "/logout", to: "students#logout", as: "logout"

end
