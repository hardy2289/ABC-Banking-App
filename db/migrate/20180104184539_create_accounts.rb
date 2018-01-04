class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :bankLocation
      t.string :userId
      t.string :userName
      t.string :userEmail
      t.string :userPhoneNo
      t.string :userAddress
      t.string :accountType
      t.float :balance
      t.float :overdraftLimit
      t.timestamps null: false
    end
  end
end
