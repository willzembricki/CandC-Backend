class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :name
      t.string :abbreviation
      t.integer :population
      t.integer :malePop
      t.integer :femalePop
      t.integer :asianPop
      t.integer :native_hawaiian
      t.integer :black
      t.integer :american_indian
      t.integer :unidentified
      t.integer :white
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
