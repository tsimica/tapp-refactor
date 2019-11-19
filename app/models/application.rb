# frozen_string_literal: true

# A class representing an application of an applicant.
class Application < ApplicationRecord
    has_many :position_preferences
    has_many :positions, through: :position_preferences
    has_one :applicant_data_for_matching
    belongs_to :applicant
    belongs_to :session

    scope :all_applications, -> { includes(:applicant_data_for_matching).all.order(:id) }
    scope :by_session, ->(session_id) { all_applications.where(session_id: session_id) }
end

# == Schema Information
#
# Table name: applications
#
#  id           :integer          not null, primary key
#  session_id   :integer          not null
#  applicant_id :integer          not null
#  comments     :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_applications_on_applicant_id  (applicant_id)
#  index_applications_on_session_id    (session_id)
#
