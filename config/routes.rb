Rails.application.routes.draw do
    namespace :api do
        namespace :v1 do
            # Sessions
            resources :sessions, only: [:index, :create] do
                collection do
                    post :delete, to: 'sessions#delete'
                end
                resources :contract_templates, only: [:index, :create]
                resources :applications, only: [:index, :create]
            end

            # Contract Templates
            get '/available_contract_templates' => 'contract_templates#available'

            # Application routes
            resources :applications, only: [:index, :create]
        end
    end
end