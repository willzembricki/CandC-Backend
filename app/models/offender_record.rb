class OffenderRecord < ApplicationRecord
  belongs_to :state

  def self.find_records(state_id, crimeName)
  response = self.where(state_id: state_id, crimeName: crimeName,year: 2019 )
  return(response)
end
end
