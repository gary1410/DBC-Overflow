DbcOverflow::Application.routes.draw do
  root to: "submissions#index"
  resources :submissions, only: [:index, :new, :create, :show] do
    resources :comments, only: [:create]
    resources :votes, only: [:create]
  end
  resources :users, only: [:new, :create]
end
