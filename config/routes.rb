Rails.application.routes.draw do
  resources :exam_dates
  root 'exam_dates#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
