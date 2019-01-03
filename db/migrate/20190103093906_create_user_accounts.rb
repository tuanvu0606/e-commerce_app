class CreateUserAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :user_accounts do |t|
      t.string :user_email
      t.string :user_password
      t.string :user_first_name
      t.string :user_last_name
      t.integer :user_visit
      t.integer :user_transaction

      t.timestamps
    end
  end
end
