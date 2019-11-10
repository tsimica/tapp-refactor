class WageChunk < ApplicationRecord
  belongs_to :assignment
end

# == Schema Information
#
# Table name: wage_chunks
#
#  id            :integer          not null, primary key
#  assignment_id :integer          not null
#  hours         :float
#  rate          :float
#  start_date    :datetime
#  end_date      :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_wage_chunks_on_assignment_id  (assignment_id)
#
