class ApplicantDataForMatching < ApplicationRecord
  belongs_to :applicant
  belongs_to :application
end
