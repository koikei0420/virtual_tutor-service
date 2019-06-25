Rails.application.routes.draw do
  resources :questions, only: [:index, :show, :create] do
    resource :answers, only: [:create]
  end
end
