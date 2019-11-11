module TransactionHandler
    extend ActiveSupport::Concern

    def start_transaction(&block)
        ActiveRecord::Base.transaction do
            block.call
        rescue StandardError => e
            render_error(message: e.errors)
            raise ActiveRecord::Rollback
        end
    end
end