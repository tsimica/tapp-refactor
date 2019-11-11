class Application < ApplicationRecord
    belongs_to :session
    has_one :applicant_data_for_matching, dependent: :destroy
    has_one :applicant, through: :applicant_data_for_matching
    has_many :position_preferences
    has_many :positions, through: :position_preferences

    scope :all_applications, -> { includes(:applicant_data_for_matching).all.order(:id) }
    scope :by_session, ->(session_id) { all_applications.where(session_id: session_id) }
end

# == Schema Information
#
# Table name: applications
#
#  id         :integer          not null, primary key
#  session_id :integer          not null
#  comments   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_applications_on_session_id  (session_id)
#
