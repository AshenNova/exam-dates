Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations]
  resources :exam_dates
  root 'index#home'
  get "search", to: "exam_dates#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
