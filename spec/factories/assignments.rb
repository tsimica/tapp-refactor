FactoryBot.define do
  factory :assignment do
    position { nil }
    applicant { nil }
    active_offer_id { 1 }
    contract_start { "2019-11-10 15:03:10" }
    contract_end { "2019-11-10 15:03:10" }
    note { "MyText" }
    offer_override_pdf { "MyString" }
  end
end
