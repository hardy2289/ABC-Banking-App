class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|   
      t.string :bankLocation
      t.integer :c_id     
      t.integer :user_id
      t.string :userName
      t.date :dob
      t.string :email
      t.string :userPhoneNo
      t.string :userAddress
      t.string :accountType
      t.float :balance
      t.float :overdraftLimit
      t.timestamps null: false
    end
  end
end
