Rails.application.routes.draw do
  resources :question do
    resources :answer
  end
end
