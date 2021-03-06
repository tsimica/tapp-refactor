# frozen_string_literal: true

class Offer < ApplicationRecord
    OFFER_STATUS = %i[pending accepted rejected withdrawn].freeze
    belongs_to :assignment

    has_secure_token :url_token
    enum status: OFFER_STATUS

    scope :inactive_offers, -> { where.not(status: :pending) }
    scope :withdraw_all, lambda {
        update_all(status: :withdrawn, withdrawn_date: Time.zone.now)
    }

    before_create :populate_offer
    before_update :set_status_date

    private

    def populate_offer
        applicant_attrs = %i[first_name last_name email]
        applicant = assignment.applicant.as_json(only: applicant_attrs)

        position_attrs = %i[position_code position_title position_start_date
                            position_end_date]
        position = applicant.as_json(only: position_attrs)

        self.attributes = attributes.merge!(applicant, position)
    end

    def set_status_date
        if status_changed?
            case status.to_sym
            when :accepted
                self.accepted_date = Time.zone.now
            when :rejected
                self.rejected_date = Time.zone.now
            when :withdrawn
                self.withdrawn_date = Time.zone.now
            end
        end
    end
end
# == Schema Information
#
# Table name: offers
#
#  id                      :integer          not null, primary key
#  assignment_id           :integer          not null
#  offer_template          :string
#  offer_override_pdf      :string
#  first_name              :string
#  last_name               :string
#  email                   :string
#  position_code           :string
#  position_title          :string
#  position_start_date     :datetime
#  position_end_date       :datetime
#  first_time_ta           :boolean
#  instructor_contact_desc :string
#  pay_period_desc         :string
#  installments            :integer
#  ta_coordinator_name     :string
#  ta_coordinator_email    :string
#  emailed_date            :datetime
#  signature               :string
#  accepted_date           :datetime
#  rejected_date           :datetime
#  withdrawn_date          :datetime
#  nag_count               :integer          default("0")
#  url_token               :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  status                  :integer          default("0"), not null
#
# Indexes
#
#  index_offers_on_assignment_id  (assignment_id)
#  index_offers_on_url_token      (url_token)
#

#
# Indexes
#
#  index_offers_on_assignment_id  (assignment_id)
#  index_offers_on_url_token      (url_token)
#
