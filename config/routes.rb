Rails.application.routes.draw do
  namespace :api do
    resources :questions, only: [:index, :show, :create] do
      resource :answers, only: [:create]
    end
  end
end
