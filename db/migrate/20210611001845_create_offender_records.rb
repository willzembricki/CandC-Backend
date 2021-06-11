class CreateOffenderRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :offender_records do |t|
      t.integer :total_offenders
      t.integer :malePopO
      t.integer :femalePopO
      t.integer :asianPopO
      t.integer :native_hawaiianO
      t.integer :blackO
      t.integer :american_indianO
      t.integer :unidentifiedO
      t.integer :whiteO
      t.integer :year

      t.timestamps
    end
  end
end
