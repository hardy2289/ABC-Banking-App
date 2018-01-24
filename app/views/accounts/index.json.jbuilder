json.array!(@accounts) do |account|
	json.extract! account, :id, :c_id, :userName, :dob,, :userPhoneNo, :userAddress, :accountType, :balance, :overdraftLimit, :bankLocation
  json.url account_url(account, format: :json)
end
