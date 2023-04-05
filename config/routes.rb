Rails.application.routes.draw do
  get 'books/new'
  get 'books/show'
  get 'books/edit'
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  root to: "homes#top"
  get '/about' => "homes#about"

  resources :genres, only: [:new, :index, :show, :edit, :create, :destroy, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
