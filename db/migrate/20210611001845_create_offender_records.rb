class CreateOffenderRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :offender_records do |t|
      t.string :crime_name
      t.integer :total_offenders
  
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
