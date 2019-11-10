class Application < ApplicationRecord
end

# == Schema Information
#
# Table name: applications
#
#  id         :integer          not null, primary key
#  session_id :integer          not null
#  comments   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_applications_on_session_id  (session_id)
#
