# frozen_string_literal: true

class Api::V1::AssignmentWageChunksController < ApplicationController
    before_action :find_assignment

    # GET /wage_chunks
    def index
        @assignment.wage_chunks
    end

    # POST /wage_chunks
    def create
        wage_chunk_ids = @assignment.wage_chunks
                                    .upsert_all(wage_chunks_create_params,
                                                returning: :id)
        WageChunk.where(id: wage_chunk_ids)
    end

    private

    def find_assignment
        @assignment = Assignment.find(params[:assignment_id])
    end

    def wage_chunks_create_params
        params.permit(%i[id start_date end_date hours rate])
    end
end
