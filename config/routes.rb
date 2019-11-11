Rails.application.routes.draw do
    namespace :api do
        namespace :v1 do
            # Sessions
            resources :sessions, only: [:index, :create] do
                resources :contract_templates, only: [:index, :create]
            end
            post '/sessions/delete' => 'sessions#delete'

            # Contract Templates
            get '/available_contract_templates' => 'contract_templates#available'
        end
    end
end