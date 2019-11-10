class Session < ApplicationRecord
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
