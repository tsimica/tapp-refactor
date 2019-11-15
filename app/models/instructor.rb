class Instructor < ApplicationRecord
    has_and_belongs_to_many :positions

    validates_presence_of :last_name, :first_name, :utorid, :email
    validates_uniqueness_of :utorid
end

# == Schema Information
#
# Table name: instructors
#
#  id         :integer          not null, primary key
#  first_name :string           not null
#  last_name  :string           not null
#  email      :string           not null
#  utorid     :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_instructors_on_utorid  (utorid) UNIQUE
#
