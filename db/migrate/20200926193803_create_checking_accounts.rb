class CreateCheckingAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :checking_accounts do |t|
      t.decimal :balance
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
