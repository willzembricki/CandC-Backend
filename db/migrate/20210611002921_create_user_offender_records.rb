class CreateUserOffenderRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :user_offender_records do |t|
      t.references :user, null: false, foreign_key: true
      t.references :offender_record, null: false, foreign_key: true

      t.timestamps
    end
  end
end
