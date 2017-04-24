Rails.application.routes.draw do
    devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :posts
    resources :authentications
    root 'posts#index'
    namespace :admin do
        resources :posts
        resources :authentications do
            member do
                post :validate
                post :invalidate
            end
        end
    end
end
