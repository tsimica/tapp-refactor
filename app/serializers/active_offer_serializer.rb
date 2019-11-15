class ActiveOfferSerializer < ApplicationSerializer
    attributes :id, :template_file, :first_name, :last_name, :email,
               :position_code, :position_title, :position_start_date,
               :position_end_date, :first_time_ta, :instructor_contact_desc,
               :pay_period_desc, :installments, :ta_coordinator_name,
               :ta_coordinator_email, :emailed_date, :string, :accepted_date,
               :rejected_date, :withdrawn_date
end
