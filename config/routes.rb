Rails.application.routes.draw do
    namespace :api do
        namespace :v1 do
            # Sessions
            resources :sessions, only: [:index, :create] do
                collection do
                    post :delete, to: 'sessions#delete'
                end
                resources :applicants, only: [:index]
                resources :applications, only: [:index, :create]
                resources :contract_templates, only: [:index, :create]
            end

            # Contract Templates
            get '/available_contract_templates' => 'contract_templates#available'

            # Application
            resources :applications, only: [:index, :create]

            # Applicants
            resources :applicants, only: [:index, :show]

            # Assignments
            resources :assignments, only: [:show, :create]
        end
    end
end