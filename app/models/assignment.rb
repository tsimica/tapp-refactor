class Assignment < ApplicationRecord
  belongs_to :position
  belongs_to :applicant
end

# == Schema Information
#
# Table name: assignments
#
#  id                 :integer          not null, primary key
#  position_id        :integer          not null
#  applicant_id       :integer          not null
#  contract_start     :datetime
#  contract_end       :datetime
#  note               :text
#  offer_override_pdf :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  active_offer_id    :integer
#
# Indexes
#
#  index_assignments_on_active_offer_id               (active_offer_id)
#  index_assignments_on_applicant_id                  (applicant_id)
#  index_assignments_on_position_id                   (position_id)
#  index_assignments_on_position_id_and_applicant_id  (position_id,applicant_id) UNIQUE
#
