class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :staffId
      t.string :staffName
      t.string :staffEmail
      t.string :staffPhoneNo
      t.string :staffRole
      t.string :workAtBranch
      t.timestamps null: false
    end
  end
end
