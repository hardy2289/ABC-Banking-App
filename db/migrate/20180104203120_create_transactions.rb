class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :transactionId
      t.string :transPurpose
      t.string :services
      t.string :user_id
      t.string :account_id
      t.string :staff_id
      t.float :trasactionAmount
      t.float :balanceBeforeTransaction
      t.float :balanceAfterTransaction
      t.string :transactionDetails
      t.timestamps null: false
    end
  end
end
