class SavedRecord < ApplicationRecord
  belongs_to :user
  belongs_to :offender_record
end
