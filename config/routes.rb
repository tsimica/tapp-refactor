Rails.application.routes.draw do
    namespace :api do
        namespace :v1 do
            # Applicants
            resources :applicants, only: [:index, :show, :create]

            # Application
            resources :applications, only: [:index, :create]

            # Assignments
            resources :assignments, only: [:show, :create] do
                resources :wage_chunks, controller: 'assignment_wage_chunks', only: [:index, :create]
                resources :offers, controller: 'active_offers', only: [:show, :create] do
                    collection do
                        post :accept
                        post :reject
                        post :withdraw
                        post :email
                        post :nag
                    end
                end
            end

            # Contract Templates
            get '/available_contract_templates' => 'contract_templates#available'

            # Instructors
            resources :instructors, only: [:index, :create] do
                collection do 
                    post :delete
                end
            end

            # Positions
            resources :positions, only: [:index, :create] do 
                collection do
                    post :delete
                end
            end

            # Sessions
            resources :sessions, only: [:index, :create] do
                collection do
                    post :delete, to: 'sessions#delete'
                end
                resources :applicants, only: [:index]
                resources :applications, only: [:index, :create]
                resources :assignments, only: [:index]
                resources :contract_templates, only: [:index, :create]
                resources :positions, controller: 'session_positions', only: [:index, :create]
            end


            # Wage Chunks
            resources :wage_chunks, only: [:create] do
                collection do
                    post :delete
                end
            end
        end
    end
end