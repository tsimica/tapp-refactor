class ContractTemplate < ApplicationRecord
  belongs_to :session
end

# == Schema Information
#
# Table name: contract_templates
#
#  id            :integer          not null, primary key
#  session_id    :integer          not null
#  template_name :string
#  template_file :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_contract_templates_on_session_id  (session_id)
#
