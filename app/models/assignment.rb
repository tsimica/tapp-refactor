# frozen_string_literal: true

# A class representing an assignment. This class has many offers and belongs to
# applicant and position.
class Assignment < ApplicationRecord
    ACTIVE_OFFER_STATUS = %i[pending accepted rejected withdrawn].freeze
    enum active_offer_status: ACTIVE_OFFER_STATUS

    has_many :offers
    has_many :wage_chunks, dependent: :delete_all
    belongs_to :active_offer, class_name: 'Offer', optional: true
    belongs_to :applicant
    belongs_to :position

    validates_uniqueness_of :applicant_id, scope: [:position_id]

    scope :by_position, ->(position_id) { where(position_id: position_id).order(:id) }
end

# == Schema Information
#
# Table name: assignments
#
#  id                  :integer          not null, primary key
#  position_id         :integer          not null
#  applicant_id        :integer          not null
#  start_date          :datetime
#  end_date            :datetime
#  note                :text
#  offer_override_pdf  :string
#  active_offer_status :integer          default("0"), not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  active_offer_id     :integer
#
# Indexes
#
#  index_assignments_on_active_offer_id               (active_offer_id)
#  index_assignments_on_applicant_id                  (applicant_id)
#  index_assignments_on_position_id                   (position_id)
#  index_assignments_on_position_id_and_applicant_id  (position_id,applicant_id) UNIQUE
#
