require 'rails_helper'

RSpec.describe Session, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
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
