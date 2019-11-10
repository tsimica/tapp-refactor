class ApplicationController < ActionController::API
    rescue_from ::ActiveRecord::RecordNotFound, with: :not_found

    private

    def render_on_condition(object:, condition:)
        if condition.call
            render_success object
        else
            render_error object.errors.full_messages.join('; ')
        end
    end

    def render_success(payload)
        render json: { status: 'success', message: '', payload: payload }
    end

    def render_error(message:, payload: {})
        render json: { status: 'error', message: message, payload: payload }
    end

    def not_found(exception)
        render json: { status: 'error', message: exception.message.to_s },
               status: :not_found
    end
end
