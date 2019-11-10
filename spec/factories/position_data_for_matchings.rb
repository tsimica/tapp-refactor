FactoryBot.define do
  factory :position_data_for_matching do
    position { nil }
    desired_num_assignments { 1 }
    current_enrollment { 1 }
    current_waitlisted { 1 }
  end
end
