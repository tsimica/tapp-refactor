class Position < ApplicationRecord
    belongs_to :session
    belongs_to :contract_template, required: false
end

# == Schema Information
#
# Table name: positions
#
#  id                   :integer          not null, primary key
#  session_id           :integer          not null
#  position_code        :string
#  position_title       :string
#  hours_per_assignment :float
#  start_date           :datetime
#  end_date             :datetime
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  contract_template_id :integer
#
# Indexes
#
#  index_positions_on_contract_template_id  (contract_template_id)
#  index_positions_on_session_id            (session_id)
#
