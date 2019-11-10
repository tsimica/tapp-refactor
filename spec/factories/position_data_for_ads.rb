FactoryBot.define do
  factory :position_data_for_ad do
    position { nil }
    duties { "MyText" }
    qualifications { "MyText" }
    ad_hours_per_assignment { 1.5 }
    ad_num_assignments { 1 }
    ad_open_date { "2019-11-10 15:23:03" }
    ad_close_date { "2019-11-10 15:23:03" }
  end
end
