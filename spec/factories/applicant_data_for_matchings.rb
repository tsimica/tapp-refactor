FactoryBot.define do
  factory :applicant_data_for_matching do
    applicant { nil }
    application { nil }
    program { "MyString" }
    department { "MyString" }
    previous_uoft_ta_experience { "MyText" }
    yip { 1 }
    annotation { "MyString" }
  end
end
