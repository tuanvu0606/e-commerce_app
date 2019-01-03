class CreateUserSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :user_sessions do |t|
      t.string :IP_add
      t.string :string
      t.string :timestamp
      t.string :time
      t.string :cart_number
      t.string :integer
      t.string :user_account_id
      t.string :integer
      t.integer :user_visit
      t.float :user_transaction

      t.timestamps
    end
  end
end
