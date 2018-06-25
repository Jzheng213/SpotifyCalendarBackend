Rails.application.routes.draw do

  namespace :api, defaults: {format: :json} do
    resources :events, only: [:index, :show, :create, :update, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
