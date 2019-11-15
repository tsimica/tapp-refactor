class Api::V1::ActiveOffersController < ApplicationController
    before_action :find_assignment

    def show
        @assignment.active_offer
    end

    # FIXME: What are the required parameters in here?
    # FIXME: Do you need to invalidate other offers?
    def create
        if Assignment.blank?
            start_transaction do
                offer = @assignment.offers.create!(offer_create_params)
                @assignment.update!(active_offer: offer)
            end
        end
    end

    # FIXME: Ideally this should be scoped to a user
    def accept
        @assignment.active_offer.accept!
    end

    def reject
        @assignment.active_offer.reject!
    end

    def withdraw
        @assignment.active_offer.withdraw!
    end

    # POST /email
    def email
    end

    # POST /nag
    def nag
    end

    private

    def find_assignment
        @assignment = Assignment.find(params[:assignment_id])
    end

    def offer_create_params
        params.permit(:position_id, :applicant_id, :contract_start_date,
                      :contract_end_date, :note, :offer_override_pdf)
    end
end