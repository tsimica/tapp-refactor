FactoryBot.define do
  factory :user do
    utorid { "MyString" }
    role { "" }
  end
end

# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  utorid     :string
#  role       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_utorid  (utorid) UNIQUE
#
