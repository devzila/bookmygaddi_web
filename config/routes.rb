Rails.application.routes.draw do
  devise_for :admin

  resources :forms
  resources :receiver, path: 'form-receiver', only: %i(new create)
  resources :home, :path => '/', only: %i(index show) do
    resources :articles, path: 'hire', only: %i(show)
  end

  namespace :admin do
    resources :contents do
      resources :contents, controller: 'category/contents'
    end

    resources :leads
    resources :forms
  end

  namespace :api do
    resources :leads, controller: 'leads', only: :create
  end
end
