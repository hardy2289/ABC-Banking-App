class AddTranspurposeToTransactions < ActiveRecord::Migration
  def change
    
    add_column :transactions, :transPurpose, :string
    add_column :transactions, :services, :string
    
  end
end
