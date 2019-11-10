class PositionDataForMatching < ApplicationRecord
  belongs_to :position
end

# == Schema Information
#
# Table name: position_data_for_matchings
#
#  id                      :integer          not null, primary key
#  position_id             :integer          not null
#  desired_num_assignments :integer
#  current_enrollment      :integer
#  current_waitlisted      :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
# Indexes
#
#  index_position_data_for_matchings_on_position_id  (position_id)
#
