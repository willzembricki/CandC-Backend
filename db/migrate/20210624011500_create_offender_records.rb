class CreateOffenderRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :offender_records do |t|
      t.string :crimeName
      t.integer :totalPopO
      t.integer :asianPopO
      t.integer :native_hawaiianO
      t.integer :blackO
      t.integer :american_indianO
      t.integer :unknownO
      t.integer :whiteO
      t.integer :year
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
