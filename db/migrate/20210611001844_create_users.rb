class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :user_data, array: true, default: []

      t.timestamps
    end
  end
end
