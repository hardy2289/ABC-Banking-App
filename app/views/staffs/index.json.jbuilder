json.array!(@staffs) do |staff|
  json.extract! staff, :id, :staffName, :staffEmail, :staffPhoneNo, :staffRole, :workAtBranch
  json.url staff_url(staff, format: :json)
end
