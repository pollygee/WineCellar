Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :wines do
    collection {post :import}
  end

  root to: 'wines#index'
end
