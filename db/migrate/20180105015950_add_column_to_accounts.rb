class AddColumnToAccounts < ActiveRecord::Migration
  def change 
        add_column :accounts, :c_id, :integer
      	add_column :accounts, :dob, :date 
  end
  
end
