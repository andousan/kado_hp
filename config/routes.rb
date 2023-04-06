Rails.application.routes.draw do
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  root to: "homes#top"
  get '/about' => "homes#about"

  resources :genres, only: [:new, :index, :show, :edit, :create, :destroy, :update] do
    resources :books, only: [:edit, :create, :destroy, :update]
  end

  resources :equipments, only: [:index, :create, :edit, :update, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
