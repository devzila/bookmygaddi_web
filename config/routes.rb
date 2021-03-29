Rails.application.routes.draw do
  resources :home, :path => '/', only: %i(index show) do
    resources :articles, path: 'hire', only: %i(show)
  end
end
