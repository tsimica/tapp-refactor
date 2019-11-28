# frozen_string_literal: true

class Api::V1::Admin::InstructorsController < ApplicationController
    # GET /instructors
    def index
        render_success Instructor.all
    end

    # POST /instructors
    def create
        @instructor = instructor.find_by(id: params[:instructor_id])
        update and return if @instructor
        @instructor = instructor.new(instructor_params)
        render_on_condition(object: @instructor,
                            condition: proc { @instructor.save! })
    end

    # POST /instructors/delete
    def delete
        @instructor = Instructor.find(params[:id])
        @instructor.positions.clear
        render_success @instructor
    end

    private

    def instructor_params
        params.permit(:first_name, :last_name, :email, :utorid)
    end

    def update
        render_on_condition(object: @instructor,
                            condition: proc {
                                @instructor.update!(instructor_params)
                            })
    end
end
