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
