require 'rails_helper'

RSpec.describe PositionTemplate, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
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
