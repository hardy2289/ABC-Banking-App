json.array!(@employees) do |staff|
  json.extract! employee, :id, :staffName, :staffEmail, :staffPhoneNo, :staffRole, :workAtBranch
  json.url employee_url(employee, format: :json)
end
