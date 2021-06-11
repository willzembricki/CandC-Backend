class ArrestRecord < ApplicationRecord
  belongs_to :state
  belongs_to :offender_record
end
