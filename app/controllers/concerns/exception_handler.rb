# frozen_string_literal: true

# Rescue exceptions and return error message in json
module ExceptionHandler
    extend ActiveSupport::Concern

    included do
        rescue_from ActiveRecord::RecordNotFound do |e|
            render_error(message: e.message)
        end

        rescue_from ActiveRecord::RecordInvalid do |e|
            render_error(message: e.message)
        end

        rescue_from ActionController::ParameterMissing do |e|
            render_error(message: e.message)
        end
    end
end
