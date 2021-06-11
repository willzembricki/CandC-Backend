class CreateArrestRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :arrest_records do |t|
      t.references :state, null: false, foreign_key: true
      t.references :offender_record, null: false, foreign_key: true
      t.integer :year

      t.timestamps
    end
  end
end
