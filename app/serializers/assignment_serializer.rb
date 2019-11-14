# frozen_string_literal: true

class AssignmentSerializer < ApplicationSerializer
    attributes :id, :start_date, :end_date, :note, :offer_override_pdf,
               :active_offer_status
end
