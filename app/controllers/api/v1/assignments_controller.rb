# frozen_string_literal: true

class Api::V1::AssignmentsController < ApplicationController
    before_action :find_assignment, only: %i[show]

    # GET /assignments/:assignment_id
    def show; end

    # POST /assignments
    def create
        @assignment = Assignment.find_by(id: params[:assignment_id])
        update and return if @assignment
        @assignment = Assignment.new(assignment_params)
        render_on_condition(object: @assignment,
                            condition: proc { @assignment.save! })
    end

    private

    def find_assignment
        @assignment = Assignment.find(params[:assignment_id])
    end

    def assignment_params
        params.permit(:start_date, :end_date, :note, :offer_override_pdf,
                      :actiive_offer_status)
    end
end
