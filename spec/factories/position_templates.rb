FactoryBot.define do
  factory :position_template do
    session { nil }
    position_type { "MyString" }
    offer_template { "MyString" }
  end
end

# == Schema Information
#
# Table name: position_templates
#
#  id             :integer          not null, primary key
#  session_id     :integer          not null
#  position_type  :string
#  offer_template :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_position_templates_on_session_id  (session_id)
#
