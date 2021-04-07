Rails.application.routes.draw do
  resources :receiver, path: 'form-receiver', only: %i(new create)
  resources :home, :path => '/', only: %i(index show) do
    resources :articles, path: 'hire', only: %i(show)
  end

  namespace :admin do
    resources :categories
  end


end
