FactoryBot.define do
  factory :session do
    start_date { "2019-11-08 14:48:30" }
    end_time { "2019-11-08 14:48:30" }
    name { "MyString" }
    rate1 { 1.5 }
    rate2 { 1.5 }
  end
end

# == Schema Information
#
# Table name: sessions
#
#  id         :integer          not null, primary key
#  start_date :datetime
#  end_time   :datetime
#  name       :string           not null
#  rate1      :float
#  rate2      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_sessions_on_name  (name) UNIQUE
#
