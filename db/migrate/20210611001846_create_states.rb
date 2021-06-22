class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :name
      t.string :abbreviation
      t.integer :population
 
      t.integer :asianPop
      t.integer :native_hawaiian
      t.integer :black
      t.integer :american_indian
      t.integer :unidentified
      t.integer :white
      

      t.timestamps
    end
  end
end
