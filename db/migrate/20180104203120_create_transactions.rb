class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :transactionId
      t.string :userId
      t.string :accountId
      t.string :staffId
      t.float :trasactionAmount
      t.float :balanceBeforeTransaction
      t.float :balanceAfterTransaction
      t.string :transactionDetails
      t.timestamps null: false
    end
  end
end
