Rails.application.routes.draw do
  resources :projects

  resources :tasks do
      member do
        patch :complete
      end
    end

  root to: "projects#index"
 
end
