class User < ApplicationRecord
has_secure_password
has_many :favorite_states
has_many :states, through: :favorite_states
has_many :saved_records
has_many :offender_records, through: :saved_records
end
