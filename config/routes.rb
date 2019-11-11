Rails.application.routes.draw do
    namespace :api do
        namespace :v1 do
            resources :sessions, only: [:index, :create]
            post '/sessions/delete' => 'sessions#delete'
        end
    end
end