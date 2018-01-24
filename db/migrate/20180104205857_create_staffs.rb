class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :staff_id
      t.string :staffName
      t.string :email
      t.string :staffPhoneNo
      t.string :staffRole
      t.string :workAtBranch
      t.timestamps null: false
    end
  end
end
