Tasca::Application.routes.draw do
  resources :tasks, only: [:index, :create] do
    member do
      put :close
    end
  end
end
