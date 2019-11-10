FactoryBot.define do
  factory :position_template do
    session { nil }
    position_type { "MyString" }
    offer_template { "MyString" }
  end
end
