Rails.application.routes.draw do
  devise_for :users

  resources :vacancies

  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "pricing", to: "pages#pricing"

  root "pages#dashboard"
end
