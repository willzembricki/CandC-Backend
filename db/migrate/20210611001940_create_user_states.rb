class CreateUserStates < ActiveRecord::Migration[6.1]
  def change
    create_table :user_states do |t|
      t.references :state, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
