FactoryBot.define do
  factory :offer do
    assignment { nil }
    offer_template { "MyString" }
    offer_override_pdf { "MyString" }
    first_name { "MyString" }
    last_name { "MyString" }
    email { "MyString" }
    position_code { "MyString" }
    position_title { "MyString" }
    position_start_date { "2019-11-10 15:16:25" }
    position_end_date { "2019-11-10 15:16:25" }
    first_time_ta { false }
    instructor_contact_desc { "MyString" }
    pay_period_desc { "MyString" }
    installments { 1 }
    ta_coordinator_name { "MyString" }
    ta_coordinator_email { "MyString" }
    emailed_date { "2019-11-10 15:16:25" }
    signature { "MyString" }
    accepted_date { "2019-11-10 15:16:25" }
    rejected_date { "2019-11-10 15:16:25" }
    withdrawn_date { "2019-11-10 15:16:25" }
    nag_count { 1 }
    url_token { "MyString" }
  end
end
