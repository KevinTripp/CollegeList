CollegeList::Application.routes.draw do
  resources :colleges
  resources :users
  resources :sessions
  resources :steps
  
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"

  get "sign_up" => "users#new", :as => "sign_up"

  match "colleges/:id" => "colleges#show", :as => "show_college"

  match "colleges/:id/steps/new" => "steps#new", :as => "new_step"
  match "colleges/:college/steps/:step/edit" => "steps#edit", :as => "edit_step"

  root :to => "sessions#new"

end
