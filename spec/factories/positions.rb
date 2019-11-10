FactoryBot.define do
  factory :position do
    session { nil }
    position_code { "MyString" }
    position_title { "MyString" }
    est_hours_per_assignment { 1.5 }
    est_start_date { "2019-11-10 14:40:15" }
    est_end_date { "2019-11-10 14:40:15" }
    position_type { "MyString" }
  end
end

# == Schema Information
#
# Table name: positions
#
#  id                       :integer          not null, primary key
#  session_id               :integer          not null
#  position_code            :string
#  position_title           :string
#  est_hours_per_assignment :float
#  est_start_date           :datetime
#  est_end_date             :datetime
#  position_type            :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#
# Indexes
#
#  index_positions_on_session_id  (session_id)
#
